require 'config'
function getclientip()
   IP = ngx.var.remote_addr
   if IP == nil then
      IP = "unknown"
   end
   return IP
end

function whiteip()
  if next(ipwhitelist) ~= nil then
     for _,ip in pairs(ipwhitelist) do
         if getclientip()==ip then
            return true
         end
     end
  end
     return false
end

function blackip()
   if next(ipblacklist) ~= nil then
      for _,ip in pairs(ipblacklist) do
          if getclientip()==ip then
             ngx.exit(404)
             return true    
          end
      end
   end
      return false
end
