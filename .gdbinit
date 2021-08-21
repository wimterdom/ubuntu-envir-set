set $peda=0

define peda
    source ~/peda/peda.py
    source ~/Pwngdb/pwngdb.py
    source ~/Pwngdb/angelheap/gdbinit.py
    set $peda=1
end

define hook-run
    if($peda=1)
        python
            import angelheap
            angelheap.init_angelheap()
        end
    end
end

define gef
    source ~/.gdbinit-gef.py
end

#set auto-load safe-path /
source ~/pwndbg/gdbinit.py
#set auto-load safe-path /
