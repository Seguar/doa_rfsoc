import sys, xml.etree.ElementTree as ET
def load(f):
    r=ET.parse(f).getroot(); d={}
    for m in r.iter('MODULE'):
        ps={}
        for p in m.findall('PARAMETERS/PARAMETER'):
            ps[p.get('NAME')]=p.get('VALUE')
        conns={}
        for p in m.findall('PORTS/PORT'):
            conns[p.get('NAME')]=sorted((c.get('INSTANCE'),c.get('PORT')) for c in p.iter('CONNECTION'))
        d[m.get('FULLNAME')]=(m.get('VLNV'),ps,conns)
    mr={}
    for x in r.iter('MEMRANGE'):
        if x.get('MASTERBUSINTERFACE'): mr[(x.get('INSTANCE'),x.get('SLAVEBUSINTERFACE'))]=(x.get('BASEVALUE'),x.get('HIGHVALUE'))
    return d,mr
a,ma=load(sys.argv[1]); b,mb=load(sys.argv[2])
ign=set(sys.argv[3].split(',')) if len(sys.argv)>3 else set()
for k in sorted(set(a)|set(b)):
    if k not in a: print('ONLY B',k,b[k][0]); continue
    if k not in b: print('ONLY A',k,a[k][0]); continue
    va,pa,ca=a[k]; vb,pb,cb=b[k]
    if va!=vb: print('VLNV',k,va,vb)
    diffs=[(n,pa.get(n),pb.get(n)) for n in sorted(set(pa)|set(pb)) if pa.get(n)!=pb.get(n) and n not in ign]
    cd=[(n,ca.get(n),cb.get(n)) for n in sorted(set(ca)|set(cb)) if ca.get(n)!=cb.get(n)]
    if diffs or cd:
        print('==',k, len(diffs),'param diffs', len(cd),'conn diffs')
        for x in diffs[:int(sys.argv[4]) if len(sys.argv)>4 else 40]: print('   P',x)
        for x in cd[:20]: print('   C',x)
for k in sorted(set(ma)|set(mb)):
    if ma.get(k)!=mb.get(k): print('MEM',k,ma.get(k),mb.get(k))
