def upgrade(ta, td, a, d)
  d["element_states"] = td["element_states"]
  d["element_order"] = td["element_order"]
  d["element_run_list_order"] = td["element_run_list_order"]
  d["config"] = td["config"]
  a["upgrade"] = ta["upgrade"]
  return a, d
end

def downgrade(ta, td, a, d)
  d["element_states"] = td["element_states"]
  d["element_order"] = td["element_order"]
  d["config"] = td["config"]
  d.delete("element_run_list_order")
  a.delete("upgrade")
  return a, d
end
