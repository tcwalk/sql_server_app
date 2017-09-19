# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 0) do

  create_table "AF0001", primary_key: "TBID", force: :cascade do |t|
    t.integer     "TBTYPE",                      default: 0,  null: false
    t.integer     "TBFKEY",                      default: 0,  null: false
    t.varchar_max "TBSTRING", limit: 2147483647, default: "", null: false
    t.index ["TBTYPE", "TBFKEY"], name: "IDX_TBTYPE_TBFKEY"
  end

  create_table "AF0002", primary_key: "TBID", force: :cascade do |t|
    t.char       "TBNAME",     limit: 50,         default: "                                                  ", null: false
    t.integer    "TBKTRAIT",                                                                                     null: false
    t.text_basic "TBFUNCTION", limit: 2147483647, default: "",                                                   null: false
  end

  create_table "AMMI001", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBTYPE",   default: 0,     null: false
    t.integer "TBKTRIAL", default: 0,     null: false
    t.integer "TBKEXPT",  default: 0,     null: false
    t.integer "TBKTRAIT", default: 0,     null: false
    t.boolean "TBVIEW",   default: false, null: false
    t.integer "TBVIEW2",  default: 0,     null: false
    t.index ["TBTYPE", "TBKEXPT", "TBKTRAIT"], name: "IDX_TBTYPE_TBKEXPT_TBKTRAIT"
    t.index ["TBTYPE", "TBKTRIAL", "TBKTRAIT"], name: "IDX_TBTYPE_TBKTRIAL_TBKTRAIT"
  end

  create_table "AMMI002", id: false, force: :cascade do |t|
    t.integer "TBKTRIAL",                          default: 0,   null: false
    t.integer "TBKTRAIT",                          default: 0,   null: false
    t.integer "TBENTRY",                           default: 0,   null: false
    t.integer "TBENTRY2",                          default: 0,   null: false
    t.decimal "TBAVG",    precision: 20, scale: 5, default: 0.0, null: false
    t.integer "TBRANK",                            default: 0,   null: false
    t.index ["TBKTRAIT"], name: "IDX_TBKTRAIT"
    t.index ["TBKTRIAL"], name: "IDX_TBKTRIAL"
  end

  create_table "AMMI003", id: false, force: :cascade do |t|
    t.integer "TBKTRIAL",            default: 0,                           null: false
    t.integer "TBKTRAIT",            default: 0,                           null: false
    t.char    "TBSTATS",  limit: 25, default: "                         ", null: false
    t.char    "TBAVG",    limit: 25, default: "                         ", null: false
    t.index ["TBKTRAIT"], name: "IDX_TBKTRAIT"
    t.index ["TBKTRIAL"], name: "IDX_TBKTRIAL"
  end

  create_table "AMMI004", id: false, force: :cascade do |t|
    t.integer "TBKEXPT",                           default: 0,   null: false
    t.integer "TBKTRAIT",                          default: 0,   null: false
    t.integer "TBENTRY",                           default: 0,   null: false
    t.integer "TBENTRY2",                          default: 0,   null: false
    t.decimal "TBAVG",    precision: 20, scale: 5, default: 0.0, null: false
    t.integer "TBRANK",                            default: 0,   null: false
    t.index ["TBKEXPT"], name: "IDX_TBKEXPT"
    t.index ["TBKTRAIT"], name: "IDX_TBKTRAIT"
  end

  create_table "AMMI005", id: false, force: :cascade do |t|
    t.integer "TBKEXPT",             default: 0,                           null: false
    t.integer "TBKTRAIT",            default: 0,                           null: false
    t.char    "TBSTATS",  limit: 25, default: "                         ", null: false
    t.char    "TBAVG",    limit: 25, default: "                         ", null: false
    t.index ["TBKEXPT"], name: "IDX_TBKEXPT"
    t.index ["TBKTRAIT"], name: "IDX_TBKTRAIT"
  end

  create_table "CD001", primary_key: "TBID", force: :cascade do |t|
    t.char          "TBNAME",     limit: 50, default: "                                                  ", null: false
    t.char          "TBDETAIL",   limit: 50, default: "                                                  ", null: false
    t.integer       "TBTYPE",                default: 0,                                                    null: false
    t.smalldatetime "TBDATEC",               default: '01-01-1900 00:00:00.0',                              null: false
    t.smalldatetime "TBDATEM",               default: -> { "getdate()" },                                   null: false
    t.integer       "TBUSERC",               default: 0,                                                    null: false
    t.integer       "TBUSERM",               default: 0,                                                    null: false
    t.integer       "TBTREATS",              default: 0,                                                    null: false
    t.integer       "TBYEARS",               default: 0,                                                    null: false
    t.integer       "TBLOCS",                default: 0,                                                    null: false
    t.integer       "TBTRAITS",              default: 0,                                                    null: false
    t.integer       "TBEXPTS",               default: 0,                                                    null: false
    t.integer       "TBNURS",                default: 0,                                                    null: false
    t.integer       "TBDATATYPE",            default: 0,                                                    null: false
    t.index ["TBNAME"], name: "IDX_TBNAME", unique: true
  end

  create_table "CD002", primary_key: "TBID", force: :cascade do |t|
    t.integer       "TBSET",                             default: 0,                       null: false
    t.integer       "TBLINK",                            default: 0,                       null: false
    t.integer       "TBLTYPE",                           default: 0,                       null: false
    t.smalldatetime "TBDATEC",                           default: '01-01-1900 00:00:00.0', null: false
    t.smalldatetime "TBDATEM",                           default: -> { "getdate()" },      null: false
    t.integer       "TBUSERC",                           default: 0,                       null: false
    t.integer       "TBUSERM",                           default: 0,                       null: false
    t.decimal       "TBWEIGHT", precision: 20, scale: 5, default: 0.0,                     null: false
    t.decimal       "TBCV",     precision: 20, scale: 5, default: 0.0,                     null: false
    t.decimal       "TBMAX",    precision: 20, scale: 5, default: 0.0,                     null: false
    t.decimal       "TBMIN",    precision: 20, scale: 5, default: 0.0,                     null: false
    t.decimal       "TBIDEAL",  precision: 20, scale: 5, default: 0.0,                     null: false
    t.boolean       "TBCROSS",                           default: false,                   null: false
    t.index ["TBSET", "TBLTYPE"], name: "IDX_TBSET_TBLTYPE"
    t.index ["TBSET"], name: "IDX_TBSET"
  end

  create_table "CR001", primary_key: "TBID", force: :cascade do |t|
    t.char    "TBNAME",     limit: 50,  default: "                                                  ",                                                                                                                                                                                                             null: false
    t.integer "TBBIT",                  default: 1,                                                                                                                                                                                                                                                                null: false
    t.char    "TBSET_NM",   limit: 254, default: "                                                                                                                                                                                                                                                              ", null: false
    t.char    "TBSET_PD",   limit: 254, default: "                                                                                                                                                                                                                                                              ", null: false
    t.char    "TBSET_SLCT", limit: 254, default: "                                                                                                                                                                                                                                                              ", null: false
    t.char    "TBSET_SRC",  limit: 254, default: "                                                                                                                                                                                                                                                              ", null: false
    t.char    "TBSET_ID",   limit: 254, default: "                                                                                                                                                                                                                                                              ", null: false
    t.char    "TBSET_DSC",  limit: 254, default: "                                                                                                                                                                                                                                                              ", null: false
  end

  create_table "CR002", primary_key: "TBID", force: :cascade do |t|
    t.char          "TBIDENTITY", limit: 125,        default: "                                                                                                                             ", null: false
    t.integer       "TBPKEY1",                       default: 0,                                                                                                                               null: false
    t.integer       "TBPKEY2",                       default: 0,                                                                                                                               null: false
    t.boolean       "TBCREATED",                     default: false,                                                                                                                           null: false
    t.char          "TBNAME",     limit: 125,        default: "                                                                                                                             "
    t.varchar_max   "TBPEDIGREE", limit: 2147483647, default: "",                                                                                                                              null: false
    t.boolean       "TBCOMPLETE",                    default: false,                                                                                                                           null: false
    t.integer       "TBBACKX",                       default: 0,                                                                                                                               null: false
    t.smalldatetime "TBDATEC",                       default: -> { "getdate()" },                                                                                                              null: false
    t.smalldatetime "TBDATEM",                       default: -> { "getdate()" },                                                                                                              null: false
    t.integer       "TBUSERC",                       default: 0,                                                                                                                               null: false
    t.integer       "TBUSERM",                       default: 0,                                                                                                                               null: false
    t.char          "TBDEST",     limit: 25,         default: "                         ",                                                                                                     null: false
    t.integer       "TBN_SEL",                       default: 0,                                                                                                                               null: false
    t.integer       "TBN_SELF",                      default: 0,                                                                                                                               null: false
    t.char          "TBSOURCE",   limit: 25,         default: "                         ",                                                                                                     null: false
    t.integer       "TBSOURCENO",                    default: 0,                                                                                                                               null: false
    t.char          "TBMTYPE",    limit: 1,          default: " ",                                                                                                                             null: false
    t.integer       "TBMETHOD",                      default: 0,                                                                                                                               null: false
    t.varchar_max   "TBPURPOSE",  limit: 2147483647, default: "",                                                                                                                              null: false
    t.index ["TBID"], name: "IDX_INC_TBPEDIGREE_TBID", unique: true
    t.index ["TBIDENTITY"], name: "IDX_TBIDENTITY"
    t.index ["TBNAME"], name: "IDX_TBNAME", unique: true
  end

  create_table "CR003", primary_key: "TBID", force: :cascade do |t|
    t.char          "TBNAME",    limit: 50,  default: "                                                  ",                                                                                                                                                                                                             null: false
    t.char          "TBDETAIL",  limit: 254, default: "                                                                                                                                                                                                                                                              ", null: false
    t.smalldatetime "TBDATEC",               default: '01-01-1900 00:00:00.0',                                                                                                                                                                                                                                          null: false
    t.smalldatetime "TBDATEM",               default: -> { "getdate()" },                                                                                                                                                                                                                                               null: false
    t.integer       "TBUSERC",               default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBUSERM",               default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBFOLDER1",             default: -1,                                                                                                                                                                                                                                                               null: false
    t.index ["TBNAME"], name: "IDX_TBNAME", unique: true
  end

  create_table "CR004", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBSET",   default: 0, null: false
    t.integer "TBCROSS", default: 0, null: false
    t.index ["TBSET", "TBCROSS"], name: "IDX_TBSET_TBCROSS", unique: true
  end

  create_table "CR005", primary_key: "TBID", force: :cascade do |t|
    t.char    "TBDETAIL",   limit: 200, default: "                                                                                                                                                                                                        ", null: false
    t.boolean "TBRESERVED",             default: false,                                                                                                                                                                                                      null: false
    t.index ["TBDETAIL"], name: "IDX_TBDETAIL", unique: true
  end

  create_table "CR006", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBPURPOSE", default: 0, null: false
    t.integer "TBCROSS",   default: 0, null: false
    t.index ["TBCROSS"], name: "IDX_INC_TBPURPOSE_TBCROSS"
    t.index ["TBPURPOSE"], name: "IDX_INC_TBCROSS_TBPURPOSE"
  end

  create_table "CR008", primary_key: "TBID", force: :cascade do |t|
    t.integer    "TBNUMBER",                      default: 0,                                                                                                                                                                                                          null: false
    t.char       "TBNAME",     limit: 50,         default: "                                                  ",                                                                                                                                                       null: false
    t.boolean    "TB2NDPLOT",                     default: false,                                                                                                                                                                                                      null: false
    t.boolean    "TBUPDPED",                      default: false,                                                                                                                                                                                                      null: false
    t.char       "TBTEXT",     limit: 6,          default: "      ",                                                                                                                                                                                                   null: false
    t.boolean    "TBUPDSEL",                      default: false,                                                                                                                                                                                                      null: false
    t.char       "TBRULES",    limit: 200,        default: "                                                                                                                                                                                                        ", null: false
    t.boolean    "TBDISPLAY",                     default: false,                                                                                                                                                                                                      null: false
    t.integer    "TBNAMEBASE",                    default: 0,                                                                                                                                                                                                          null: false
    t.integer    "TBASKFEM",                      default: 0,                                                                                                                                                                                                          null: false
    t.integer    "TBASKMALE",                     default: 0,                                                                                                                                                                                                          null: false
    t.integer    "TBFNINC",                       default: 0,                                                                                                                                                                                                          null: false
    t.char       "TBRULESS",   limit: 200,        default: "                                                                                                                                                                                                        ", null: false
    t.boolean    "TBNEWCROSS",                    default: false,                                                                                                                                                                                                      null: false
    t.boolean    "TBBACKX",                       default: false,                                                                                                                                                                                                      null: false
    t.integer    "TBCONTEXT",                     default: 0,                                                                                                                                                                                                          null: false
    t.text_basic "TBDEFAULT",  limit: 2147483647, default: "",                                                                                                                                                                                                         null: false
    t.char       "TBCALL",     limit: 10,         default: "          ",                                                                                                                                                                                               null: false
    t.boolean    "TBUPDNM",                       default: false,                                                                                                                                                                                                      null: false
    t.char       "TBBASENM",   limit: 50,         default: "                                                  ",                                                                                                                                                       null: false
    t.char       "TBPREFNM",   limit: 1,          default: " ",                                                                                                                                                                                                        null: false
    t.boolean    "TBUPDID",                       default: false,                                                                                                                                                                                                      null: false
    t.char       "TBBASEID",   limit: 50,         default: "                                                  ",                                                                                                                                                       null: false
    t.char       "TBPREFID",   limit: 1,          default: " ",                                                                                                                                                                                                        null: false
    t.integer    "TBNMCREATE"
    t.varchar    "TBNMBASE",   limit: 400
    t.integer    "TBNMSOURCE"
    t.char       "TBNMFIELD",  limit: 10
    t.integer    "TBNMSTART"
    t.integer    "TBNMFILL"
    t.integer    "TBIDCREATE"
    t.varchar    "TBIDBASE",   limit: 400
    t.integer    "TBIDSOURCE"
    t.char       "TBIDFIELD",  limit: 10
    t.integer    "TBIDSTART"
    t.integer    "TBIDFILL"
    t.integer    "TBSDCREATE"
    t.varchar    "TBSDBASE",   limit: 400
    t.integer    "TBSDSOURCE"
    t.integer    "TBSDSTART"
    t.integer    "TBSDFILL"
    t.boolean    "TBSEEDINC",                     default: false
    t.integer    "TBMFLAG",                       default: 0
  end

  create_table "CR009", primary_key: "TBID", force: :cascade do |t|
    t.char    "TBNAME",   limit: 25,  default: "                         ",                                                                                                                              null: false
    t.char    "TBCALL",   limit: 50,  default: "                                                  ",                                                                                                     null: false
    t.char    "TBINFO",   limit: 25,  default: "                         ",                                                                                                                              null: false
    t.char    "TBDETAIL", limit: 150, default: "                                                                                                                                                      ", null: false
    t.boolean "TBDATA",               default: false,                                                                                                                                                    null: false
    t.char    "TBSAMPLE", limit: 10,  default: "          ",                                                                                                                                             null: false
    t.integer "TBTYPE"
  end

  create_table "CR011", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBKTRAIT",             default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer "TBKCROSS",             default: 0,                                                                                                                                                                                                                                                                null: false
    t.char    "TBDATA",   limit: 254, default: "                                                                                                                                                                                                                                                              ", null: false
    t.index ["TBKCROSS", "TBKTRAIT"], name: "IDX_TBKTRAIT_TBKCROSS", unique: true
  end

  create_table "CR012", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBKTRAIT", default: 0,     null: false
    t.boolean "TBVIEW",   default: true,  null: false
    t.boolean "TBLOCK",   default: false, null: false
    t.index ["TBKTRAIT"], name: "IDX_TBKTRAIT", unique: true
  end

  create_table "CT0001", primary_key: "TBID", force: :cascade do |t|
    t.char    "TBNAME",    limit: 50, default: "                                                  ", null: false
    t.boolean "TBSTYLE",              default: false,                                                null: false
    t.boolean "TBRELVIEW"
    t.index ["TBNAME"], name: "IDX_TBNAME", unique: true
  end

  create_table "CT0002", id: false, force: :cascade do |t|
    t.integer "TBKEY",                                          default: 0,   null: false
    t.integer "TBKTRAIT",                                       default: 0,   null: false
    t.float   "TBHIGH",                                         default: 0.0, null: false
    t.float   "TBLOW",                                          default: 0.0, null: false
    t.float   "TBWEIGHT",                                       default: 0.0, null: false
    t.integer "TBLOCATION",                                     default: 0,   null: false
    t.integer "TBYEAR",                                         default: 0,   null: false
    t.integer "TBUSER",                                         default: 0,   null: false
    t.integer "TBTRAITFLD",                                     default: 0,   null: false
    t.decimal "TBCV",                  precision: 20, scale: 4, default: 0.0, null: false
    t.decimal "TBTRANS",               precision: 20, scale: 4, default: 0.0, null: false
    t.varchar "TBTABLE",    limit: 10
    t.index ["TBKEY"], name: "IDX_TBKEY"
  end

  create_table "DE001", id: false, force: :cascade do |t|
    t.integer "TBDESIGN",               default: 0,                                                                                                                                                                                                          null: false
    t.char    "TBDESIGN_N", limit: 25,  default: "                         ",                                                                                                                                                                                null: false
    t.char    "TBDESCRIPT", limit: 200, default: "                                                                                                                                                                                                        ", null: false
    t.char    "TBEXTAC",    limit: 40,  default: "                                        ",                                                                                                                                                                 null: false
    t.integer "TBEXTAI",                default: 0,                                                                                                                                                                                                          null: false
    t.boolean "TBEXTAL",                default: false,                                                                                                                                                                                                      null: false
    t.integer "TBMODEL",                default: 0,                                                                                                                                                                                                          null: false
    t.integer "TBOPTION",               default: 0,                                                                                                                                                                                                          null: false
    t.boolean "TBACB",                  default: false,                                                                                                                                                                                                      null: false
    t.boolean "TBALS",                  default: false,                                                                                                                                                                                                      null: false
    t.boolean "TBALPHA",                default: false,                                                                                                                                                                                                      null: false
    t.boolean "TBNN",                   default: false,                                                                                                                                                                                                      null: false
    t.boolean "TBMMEANS",               default: false,                                                                                                                                                                                                      null: false
    t.boolean "TBAAD",                  default: false,                                                                                                                                                                                                      null: false
    t.integer "TBLEVEL",                default: 0,                                                                                                                                                                                                          null: false
    t.integer "TBANALYSIS",             default: 0,                                                                                                                                                                                                          null: false
    t.index ["TBDESIGN"], name: "IDX_TBDESIGN", unique: true
  end

  create_table "DE002", id: false, force: :cascade do |t|
    t.integer "TBDESIGN",               default: 0,                                null: false
    t.integer "TBFACTOR",               default: 0,                                null: false
    t.char    "TBFLD_NAME",  limit: 10, default: "          ",                     null: false
    t.char    "TB_ACTUAL",   limit: 10, default: "          ",                     null: false
    t.char    "TB_TREAT",    limit: 10, default: "          ",                     null: false
    t.char    "TB_NAME",     limit: 10, default: "          ",                     null: false
    t.char    "TB_INFO",     limit: 30, default: "                              ", null: false
    t.integer "TBKEY",                  default: 0,                                null: false
    t.char    "TB_DESC",     limit: 16, default: "                ",               null: false
    t.char    "TB_NTREAT",   limit: 12, default: "            ",                   null: false
    t.char    "TBPLOTTABLE", limit: 10
    t.index ["TBDESIGN"], name: "IDX_TBDESIGN"
  end

  create_table "DE003", id: false, force: :cascade do |t|
    t.char    "TBFLD_NAME", limit: 25, default: "                         ", null: false
    t.char    "TB_ACTUAL",  limit: 11, default: "           ",               null: false
    t.char    "TB_TABLE",   limit: 20, default: "                    ",      null: false
    t.boolean "TB_NOGRID",             default: false,                       null: false
    t.integer "TB_SORT",               default: 0,                           null: false
    t.index ["TB_ACTUAL"], name: "IDX_TB_ACTUAL", unique: true
  end

  create_table "DEN001", primary_key: "TBID", force: :cascade do |t|
    t.char "TBPATTERN", limit: 100, default: "                                                                                                    ", null: false
    t.index ["TBPATTERN"], name: "IDX_TBPATTERN", unique: true
  end

  create_table "DEN002", primary_key: "TBID", force: :cascade do |t|
    t.char "TBNAME", limit: 25, default: "                         ", null: false
    t.index ["TBNAME"], name: "IDX_TBNAME", unique: true
  end

  create_table "DEN003", id: false, force: :cascade do |t|
    t.integer "TBLINK",                                                                                                                                                          null: false
    t.integer "POSITION",              default: 0,                                                                                                                               null: false
    t.char    "TYPE",      limit: 1,   default: " ",                                                                                                                             null: false
    t.char    "GENOTYPE",  limit: 125, default: "                                                                                                                             ", null: false
    t.integer "GENKEY",                default: 0,                                                                                                                               null: false
    t.char    "CROSSNAME", limit: 125, default: "                                                                                                                             ", null: false
    t.integer "CROSSKEY",              default: 0,                                                                                                                               null: false
    t.char    "MALE",      limit: 125, default: "                                                                                                                             ", null: false
    t.integer "MALEKEY",               default: 0,                                                                                                                               null: false
    t.char    "FEMALE",    limit: 125, default: "                                                                                                                             ", null: false
    t.integer "FEMALEKEY",             default: 0,                                                                                                                               null: false
    t.char    "LAYOUT",    limit: 20,  default: "                    ",                                                                                                          null: false
    t.integer "REPEAT",                default: 0,                                                                                                                               null: false
    t.index ["TBLINK"], name: "IDX_TBLINK"
  end

  create_table "EXD01", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBKEXPT",    default: 0, null: false
    t.integer "TBEXPTPLOT", default: 0, null: false
    t.integer "TBDSGNPLOT", default: 0, null: false
    t.integer "TBBLOCK",    default: 0, null: false
    t.integer "TBFACT1",    default: 0, null: false
    t.integer "TBFACT2",    default: 0, null: false
    t.integer "TBFACT3",    default: 0, null: false
    t.integer "TBFACT4",    default: 0, null: false
    t.integer "TBRANGE",    default: 0, null: false
    t.integer "TBROW",      default: 0, null: false
    t.integer "TBPLANTER",  default: 0, null: false
    t.integer "TBHARVEST",  default: 0, null: false
    t.integer "TBLOC_PLOT", default: 0, null: false
    t.integer "TBENT1",     default: 0, null: false
    t.integer "TBENT2",     default: 0, null: false
    t.integer "TBENT3",     default: 0, null: false
    t.integer "TBENT4",     default: 0, null: false
    t.integer "TBCHECK",    default: 0, null: false
    t.integer "TBENDPLOT",  default: 0, null: false
    t.integer "TBCONE",     default: 0, null: false
    t.integer "TBPASS",     default: 0, null: false
    t.integer "TBFILL",     default: 0, null: false
    t.index ["TBKEXPT"], name: "IDX_TBKEXPT"
  end

  create_table "EXD02", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBSUBPLOT",               default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer "TBKEXPT",                 default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer "TBEXPT_PLOT",             default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer "TBKTRAIT",                default: 0,                                                                                                                                                                                                                                                                null: false
    t.char    "TBDATAC",     limit: 254, default: "                                                                                                                                                                                                                                                              ", null: false
    t.boolean "TBMISSING",               default: false,                                                                                                                                                                                                                                                            null: false
    t.integer "TBSEC_LEVEL",             default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer "TBYEAR",                  default: 0,                                                                                                                                                                                                                                                                null: false
    t.boolean "TBAVG",                   default: false,                                                                                                                                                                                                                                                            null: false
    t.index ["TBEXPT_PLOT", "TBKTRAIT", "TBYEAR"], name: "IDX_TBEXPT_PLOT_TBKTRAIT_TBYEAR", unique: true
    t.index ["TBKEXPT"], name: "IDX_TBKEXPT"
  end

  create_table "EXD03", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBEXPTPLOT", default: 0, null: false
    t.integer "TBSPNUM",    default: 0, null: false
    t.integer "TBKEXPT",    default: 0, null: false
    t.integer "TBYEAR",     default: 0, null: false
    t.index ["TBEXPTPLOT", "TBSPNUM", "TBYEAR"], name: "IDX_TBEXPTPLOT_TBSPNUM_TBYEAR", unique: true
    t.index ["TBKEXPT"], name: "IDX_TBKEXPT"
    t.index ["TBSPNUM"], name: "IDX_TBSPNUM"
  end

  create_table "EXD04", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBSUBPLOT",             default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer "TBKTRAIT",              default: 0,                                                                                                                                                                                                                                                                null: false
    t.char    "TBDATAC",   limit: 254, default: "                                                                                                                                                                                                                                                              ", null: false
    t.boolean "TBMISSING",             default: false,                                                                                                                                                                                                                                                            null: false
    t.index ["TBSUBPLOT", "TBKTRAIT"], name: "IDX_TBSUPLOT_TBKTRAIT", unique: true
  end

  create_table "EXG01", primary_key: "TBID", force: :cascade do |t|
    t.char    "TBNAME",    limit: 50,  default: "                                                  ",                                                                                                                                                                                                             null: false
    t.char    "TBDETAIL",  limit: 254, default: "                                                                                                                                                                                                                                                              ", null: false
    t.integer "TBFOLDER1",             default: -1,                                                                                                                                                                                                                                                               null: false
    t.integer "TBSHOW",                default: 1,                                                                                                                                                                                                                                                                null: false
    t.index ["TBNAME"], name: "IDX_TBNAME", unique: true
  end

  create_table "EXG02", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBFOLDER", default: 0,    null: false
    t.integer "TBITEM",   default: 0,    null: false
    t.boolean "TBLOAD",   default: true, null: false
    t.index ["TBFOLDER", "TBITEM"], name: "IDX_TBFOLDER_TBITEM", unique: true
  end

  create_table "EXM01", id: false, force: :cascade do |t|
    t.integer  "TBKEXPT",                           default: 0,                       null: false
    t.integer  "TBKTRAIT",                          default: 0,                       null: false
    t.integer  "TBENT1",                            default: 0,                       null: false
    t.integer  "TBFACT1",                           default: 0,                       null: false
    t.decimal  "TBAVG",    precision: 20, scale: 6, default: 0.0,                     null: false
    t.integer  "TBRANK",                            default: 0,                       null: false
    t.decimal  "TBCV",     precision: 20, scale: 6, default: 0.0,                     null: false
    t.decimal  "TBSERR",   precision: 20, scale: 6, default: 0.0,                     null: false
    t.decimal  "TBLSD",    precision: 20, scale: 6, default: 0.0,                     null: false
    t.decimal  "TBPCHK",   precision: 20, scale: 6, default: 0.0,                     null: false
    t.decimal  "TBPTMN",   precision: 20, scale: 6, default: 0.0,                     null: false
    t.decimal  "TBPC1",    precision: 20, scale: 6, default: 0.0,                     null: false
    t.decimal  "TBPC2",    precision: 20, scale: 6, default: 0.0,                     null: false
    t.decimal  "TBPC3",    precision: 20, scale: 6, default: 0.0,                     null: false
    t.decimal  "TBPC4",    precision: 20, scale: 6, default: 0.0,                     null: false
    t.decimal  "TBPC5",    precision: 20, scale: 6, default: 0.0,                     null: false
    t.decimal  "TBPC6",    precision: 20, scale: 6, default: 0.0,                     null: false
    t.decimal  "TBPC7",    precision: 20, scale: 6, default: 0.0,                     null: false
    t.decimal  "TBPC8",    precision: 20, scale: 6, default: 0.0,                     null: false
    t.decimal  "TBPC9",    precision: 20, scale: 6, default: 0.0,                     null: false
    t.decimal  "TBPC10",   precision: 20, scale: 6, default: 0.0,                     null: false
    t.integer  "TBYEAR",                            default: 0,                       null: false
    t.integer  "TBENT2",                            default: 0,                       null: false
    t.integer  "TBENT3",                            default: 0,                       null: false
    t.integer  "TBENT4",                            default: 0,                       null: false
    t.integer  "TBFACT2",                           default: 0,                       null: false
    t.integer  "TBFACT3",                           default: 0,                       null: false
    t.integer  "TBFACT4",                           default: 0,                       null: false
    t.datetime "TBCDATE",                           default: '01-01-1900 00:00:00.0', null: false
    t.integer  "TBNCR",                             default: 0,                       null: false
    t.index ["TBENT1", "TBFACT1", "TBKTRAIT", "TBYEAR"], name: "IDX_TBENT1_TBFACT1_TBKTRAIT_TBYEAR"
    t.index ["TBENT1", "TBKTRAIT", "TBYEAR"], name: "IDX_TBENT1_TBKTRAIT_TBYEAR"
    t.index ["TBKEXPT", "TBKTRAIT", "TBYEAR"], name: "IDX_TBKEXPT_TBKTRAIT_TBYEAR"
    t.index ["TBKEXPT"], name: "IDX_TBKEXPT"
    t.index ["TBKTRAIT"], name: "IDX_TBKTRAIT"
  end

  create_table "EXM02", id: false, force: :cascade do |t|
    t.integer  "TBKEXPT",              default: 0,                                                                                                                               null: false
    t.char     "TBSTATS",  limit: 125, default: "                                                                                                                             "
    t.char     "TBAVG",    limit: 50,  default: "                                                  ",                                                                            null: false
    t.integer  "TBKTRAIT",             default: 0,                                                                                                                               null: false
    t.datetime "TBDATE",               default: '01-01-1900 00:00:00.0',                                                                                                         null: false
    t.integer  "TBYEAR",               default: 0,                                                                                                                               null: false
    t.index ["TBKEXPT", "TBKTRAIT", "TBYEAR"], name: "IDX_TBKEXPT_TBKTRAIT_TBYEAR"
    t.index ["TBKEXPT"], name: "IDX_TBKEXPT"
    t.index ["TBKTRAIT", "TBYEAR"], name: "IDX_TBKTRAIT_TBYEAR"
  end

  create_table "EXM03", id: false, force: :cascade do |t|
    t.integer  "TBKEXPT",              default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer  "TBKTRAIT",             default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer  "TBFACT1",              default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer  "TBFACT2",              default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer  "TBFACT3",              default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer  "TBFACT4",              default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer  "TBENT1",               default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer  "TBENT2",               default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer  "TBENT3",               default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer  "TBENT4",               default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer  "TBYEAR",               default: 0,                                                                                                                                                                                                                                                                null: false
    t.char     "TBDATAC",  limit: 254, default: "                                                                                                                                                                                                                                                              ", null: false
    t.datetime "TBCDATE",              default: '01-01-1900 00:00:00.0',                                                                                                                                                                                                                                          null: false
    t.index ["TBKEXPT"], name: "IDX_TBKEXPT"
    t.index ["TBKTRAIT", "TBYEAR"], name: "IDX_TBKTRAIT_TBYEAR"
  end

  create_table "EXM04", primary_key: "TBID", force: :cascade do |t|
    t.integer    "TBKEXPT",                     default: 0,    null: false
    t.integer    "TBKTRAIT",                    default: 0,    null: false
    t.boolean    "TBVIEW",                      default: true, null: false
    t.integer    "TBVIEW2",                     default: 1,    null: false
    t.integer    "TBYEAR",                      default: 0,    null: false
    t.text_basic "TBNOTES",  limit: 2147483647, default: "",   null: false
    t.text_basic "TBANOVA",  limit: 2147483647, default: "",   null: false
    t.index ["TBKEXPT"], name: "IDX_TBKEXPT"
    t.index ["TBKTRAIT", "TBYEAR"], name: "IDX_TBKTRAIT_TBYEAR"
  end

  create_table "EXNUST01", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBTYPE",  null: false
    t.integer "TBKEY",   null: false
    t.integer "TBTRAIT", null: false
  end

  create_table "EXP01", primary_key: "TBID", force: :cascade do |t|
    t.char          "TBNAME",          limit: 50,                           default: "                                                  ",                                                                                                                                                                                                             null: false
    t.char          "TBDETAIL",        limit: 254,                          default: "                                                                                                                                                                                                                                                              ", null: false
    t.integer       "TBYEAR",                                               default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBDESIGN",                                             default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBKLOC",                                               default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBTREATNUM",                                           default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBPLOTSTART",                                          default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBPLOTINCRE",                                          default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBBLOCNUM",                                            default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBBLOCINCRE",                                          default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBPARAM1",                                             default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBPARAM2",                                             default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBPARAM3",                                             default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBPARAM4",                                             default: 0,                                                                                                                                                                                                                                                                null: false
    t.boolean       "TBSERPENTINE",                                         default: false,                                                                                                                                                                                                                                                            null: false
    t.integer       "TBSEEDNUM",                                            default: 0,                                                                                                                                                                                                                                                                null: false
    t.boolean       "TBRANDOMIZEFRST",                                      default: false,                                                                                                                                                                                                                                                            null: false
    t.integer       "TBFOLDER",                                             default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBIMPORT",                                             default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBMODEL",                                              default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBOPTION",                                             default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBLOCINC",                                             default: 0,                                                                                                                                                                                                                                                                null: false
    t.decimal       "TBSRATE",                     precision: 20, scale: 5, default: 0.0,                                                                                                                                                                                                                                                              null: false
    t.integer       "TBSUNIT",                                              default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBPLOTLAYOUT",                                         default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBUSERC",                                              default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBUSERM",                                              default: 0,                                                                                                                                                                                                                                                                null: false
    t.smalldatetime "TBDATEC",                                              default: '01-01-1900 00:00:00.0',                                                                                                                                                                                                                                          null: false
    t.smalldatetime "TBDATEM",                                              default: -> { "getdate()" },                                                                                                                                                                                                                                               null: false
    t.integer       "TBFIELDSET",                                           default: 0,                                                                                                                                                                                                                                                                null: false
    t.boolean       "TBSUBPLOT",                                            default: false,                                                                                                                                                                                                                                                            null: false
    t.integer       "TBSTYLE",                                              default: 0,                                                                                                                                                                                                                                                                null: false
    t.boolean       "TBPNL",                                                default: false,                                                                                                                                                                                                                                                            null: false
    t.integer       "TBVIEW",                                               default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBSUBTYPE",                                            default: 1,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBMVIEW",                                              default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBSUBSTART",                                           default: 1,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBSUBINCR",                                            default: 1,                                                                                                                                                                                                                                                                null: false
    t.boolean       "TBSUBCNT",                                             default: false,                                                                                                                                                                                                                                                            null: false
    t.integer       "TBEXDEPTH",                                            default: 0,                                                                                                                                                                                                                                                                null: false
    t.index ["TBKLOC"], name: "IDX_TBKLOC"
    t.index ["TBNAME"], name: "IDX_TBNAME", unique: true
    t.index ["TBYEAR"], name: "IDX_TBYEAR"
  end

  create_table "EXP02", primary_key: "TBID", force: :cascade do |t|
    t.integer    "TBKEXPT",                       default: 0,     null: false
    t.integer    "TBKTRAIT",                      default: 0,     null: false
    t.integer    "TBVARIANT",                     default: 0,     null: false
    t.boolean    "TBLOAD",                        default: true,  null: false
    t.boolean    "TBREADONLY",                    default: false, null: false
    t.boolean    "TBSUBLOCK",                     default: false, null: false
    t.text_basic "TBNOTES",    limit: 2147483647, default: "",    null: false
    t.boolean    "TBCAL",                         default: true,  null: false
    t.integer    "TBSUBCAL",                      default: 1,     null: false
    t.boolean    "TBNORMAL",                      default: false, null: false
    t.index ["TBKEXPT", "TBKTRAIT"], name: "IDX_TBKEXPT_TBKTRAIT", unique: true
    t.index ["TBKEXPT"], name: "IDX_INC_TBKTRAIT_TBKEXPT"
    t.index ["TBKTRAIT"], name: "IDX_INC_TBKEXPT_TBKTRAIT"
  end

  create_table "EXP03", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBKEXPT",  default: 0, null: false
    t.integer "TBKTRAIT", default: 0, null: false
    t.index ["TBKEXPT"], name: "IDX_INC_TBKTRAIT_TBKEXPT"
    t.index ["TBKTRAIT"], name: "IDX_INC_TBKEXPT_TBKTRAIT"
  end

  create_table "EXP04", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBKEXPT",  default: 0, null: false
    t.integer "TBKTRAIT", default: 0, null: false
    t.index ["TBKEXPT"], name: "IDX_INC_TBKTRAIT_TBKEXPT"
    t.index ["TBKTRAIT"], name: "IDX_INC_TBKEXPT_TBKTRAIT"
  end

  create_table "EXP05", primary_key: "TBID", force: :cascade do |t|
    t.boolean "TBDISPLAY", default: true, null: false
    t.integer "TBKEXPT",   default: 0,    null: false
    t.integer "TBYEAR",    default: 0,    null: false
    t.index ["TBKEXPT"], name: "IDX_INC_TBYEAR_TBKEXPT"
    t.index ["TBYEAR"], name: "IDX_INC_TBKEXPT_TBYEAR"
  end

  create_table "EXP06", primary_key: "TBID", force: :cascade do |t|
    t.integer       "TBKEXPT",                           default: 0,                       null: false
    t.integer       "TBKTREAT",                          default: 0,                       null: false
    t.integer       "TBLOT",                             default: 0,                       null: false
    t.decimal       "TBAMOUNT", precision: 20, scale: 5, default: 0.0,                     null: false
    t.integer       "TBUSERC",                           default: 0,                       null: false
    t.integer       "TBUSERM",                           default: 0,                       null: false
    t.smalldatetime "TBDATEC",                           default: '01-01-1900 00:00:00.0', null: false
    t.smalldatetime "TBDATEM",                           default: -> { "getdate()" },      null: false
    t.index ["TBKEXPT"], name: "IDX_INC_TBKTREAT_TBKEXPT"
    t.index ["TBKTREAT"], name: "IDX_INC_TBKEXPT_TBKTREAT"
  end

  create_table "EXT01", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBKTRAIT", default: 0,     null: false
    t.boolean "TBVIEW",   default: true,  null: false
    t.boolean "TBLOCK",   default: false, null: false
    t.index ["TBKTRAIT"], name: "IDX_TBKTRAIT", unique: true
  end

  create_table "EXT02", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBKTRAIT",             default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer "TBKEXPT",              default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer "TBYEAR",               default: 0,                                                                                                                                                                                                                                                                null: false
    t.char    "TBDATA",   limit: 254, default: "                                                                                                                                                                                                                                                              ", null: false
    t.index ["TBKEXPT", "TBKTRAIT", "TBYEAR"], name: "IDX_TBKEXPT_TBKTRAIT_TBYEAR", unique: true
  end

  create_table "FI001", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBLIST",             default: 0,            null: false
    t.char    "TBFIELD", limit: 10, default: "          ", null: false
    t.integer "TBNUM",              default: 0,            null: false
    t.index ["TBLIST"], name: "IDX_TBLIST"
  end

  create_table "FI002", primary_key: "TBID", force: :cascade do |t|
    t.char    "TBNAME", limit: 25, default: "                         ", null: false
    t.integer "TBEXPT",            default: 0,                           null: false
    t.index ["TBNAME"], name: "IDX_TBNAME", unique: true
  end

  create_table "FRX001", primary_key: "TBID", force: :cascade do |t|
    t.binary  "TBPATH",   limit: 2147483647
    t.char    "TBNAME",   limit: 25,         default: "                         ",                          null: false
    t.char    "TBDETAIL", limit: 50,         default: "                                                  ", null: false
    t.integer "TBEXPT",                      default: 0,                                                    null: false
    t.integer "TBTYPE",                      default: 1,                                                    null: false
    t.boolean "TBLAST",                      default: false,                                                null: false
    t.binary  "TBPATH2",  limit: 2147483647
    t.index ["TBNAME"], name: "IDX_TBNAME"
  end

  create_table "GRI001", primary_key: "TBID", force: :cascade do |t|
    t.char          "TBNAME",     limit: 60,         default: "                                                            ", null: false
    t.text_basic    "TBHIGH",     limit: 2147483647, default: "",                                                             null: false
    t.text_basic    "TBLOW",      limit: 2147483647, default: "",                                                             null: false
    t.integer       "TBANALYSIS",                    default: 0,                                                              null: false
    t.integer       "TBABOVE",                       default: 0,                                                              null: false
    t.integer       "TBBELOW",                       default: 0,                                                              null: false
    t.integer       "TBSIDES",                       default: 0,                                                              null: false
    t.integer       "TBVARIETY",                     default: 0,                                                              null: false
    t.integer       "TBDISPLAY",                     default: 0,                                                              null: false
    t.integer       "TBINCLUDE",                     default: 0,                                                              null: false
    t.integer       "TBPREVIEW",                     default: 0,                                                              null: false
    t.integer       "TBSELECT",                      default: 0,                                                              null: false
    t.integer       "TBALPHA",                       default: 0,                                                              null: false
    t.integer       "TBLSD",                         default: 0,                                                              null: false
    t.integer       "TBUSERC",                       default: 0,                                                              null: false
    t.integer       "TBUSERM",                       default: 0,                                                              null: false
    t.smalldatetime "TBDATEC",                       default: '01-01-1900 00:00:00.0',                                        null: false
    t.smalldatetime "TBDATEM",                       default: -> { "getdate()" },                                             null: false
    t.index ["TBNAME"], name: "IDX_TBNAME", unique: true
  end

  create_table "GXE001", id: false, force: :cascade do |t|
    t.integer "TBKTRIAL", default: 0,    null: false
    t.integer "TBKTRAIT", default: 0,    null: false
    t.boolean "TBVIEW",   default: true, null: false
    t.integer "TBVIEW2",  default: 1,    null: false
    t.integer "TBRUN",    default: 0,    null: false
    t.index ["TBKTRAIT"], name: "IDX_INC_TBKTRIAL_TBKTRAIT"
    t.index ["TBKTRIAL", "TBKTRAIT"], name: "IDX_TBKTRIAL_TBKTRAIT", unique: true
    t.index ["TBKTRIAL"], name: "IDX_INC_TBKTRAIT_TBKTRIAL"
  end

  create_table "GXE002", id: false, force: :cascade do |t|
    t.integer "TBKTRIAL",                          default: 0,   null: false
    t.integer "TBKTRAIT",                          default: 0,   null: false
    t.integer "TBFACT1",                           default: 0,   null: false
    t.decimal "TBCPERF",  precision: 20, scale: 5, default: 0.0, null: false
    t.decimal "TBECOVAL", precision: 20, scale: 5, default: 0.0, null: false
    t.decimal "TBSTBV",   precision: 20, scale: 5, default: 0.0, null: false
    t.decimal "TBSTBVC",  precision: 20, scale: 5, default: 0.0, null: false
    t.decimal "TBS1",     precision: 20, scale: 5, default: 0.0, null: false
    t.decimal "TBZ1",     precision: 20, scale: 5, default: 0.0, null: false
    t.decimal "TBS2",     precision: 20, scale: 5, default: 0.0, null: false
    t.decimal "TBZ2",     precision: 20, scale: 5, default: 0.0, null: false
    t.decimal "TBAVG",    precision: 20, scale: 5, default: 0.0, null: false
    t.decimal "TBBETA",   precision: 20, scale: 5, default: 0.0, null: false
    t.decimal "TBSDI",    precision: 20, scale: 5, default: 0.0, null: false
    t.integer "TBENT1",                            default: 0,   null: false
    t.index ["TBKTRAIT"], name: "IDX_TBKTRAIT"
    t.index ["TBKTRIAL", "TBKTRAIT", "TBENT1"], name: "IDX_TBKTRIAL_TBKTRAIT_TBENT1"
    t.index ["TBKTRIAL"], name: "IDX_TBKTRIAL"
  end

  create_table "GXE003", id: false, force: :cascade do |t|
    t.integer "TBKTRIAL",            default: 0,                                                    null: false
    t.integer "TBKTRAIT",            default: 0,                                                    null: false
    t.char    "TBSTATS",  limit: 25, default: "                         ",                          null: false
    t.char    "TBAVG1",   limit: 50, default: "                                                  ", null: false
    t.char    "TBBETA",   limit: 50, default: "                                                  ", null: false
    t.char    "TBSDI",    limit: 50, default: "                                                  ", null: false
    t.index ["TBKTRAIT"], name: "IDX_TBKTRAIT"
    t.index ["TBKTRIAL"], name: "IDX_TBKTRIAL"
  end

  create_table "GXE004", id: false, force: :cascade do |t|
    t.integer    "TBTRIAL",                                    null: false
    t.integer    "TBTRAIT",                                    null: false
    t.integer    "TBANALYSIS",                                 null: false
    t.text_basic "TBANOVA",    limit: 2147483647, default: "", null: false
  end

  create_table "HA001", primary_key: "TBID", force: :cascade do |t|
    t.char    "TBNAME",  limit: 50, default: "                                                  ", null: false
    t.integer "TBPLOTS",            default: 0,                                                    null: false
    t.integer "TBSPLIT",            default: 0
    t.index ["TBNAME"], name: "IDX_TBNAME", unique: true
  end

  create_table "IM001", primary_key: "TBID", force: :cascade do |t|
    t.char       "TBTABLE",     limit: 20,         default: "                    ",                                                                                                                                                                                                                                           null: false
    t.integer    "TBKEY",                          default: 0,                                                                                                                                                                                                                                                                null: false
    t.binary     "TBIMAGEFILE", limit: 2147483647
    t.text_basic "TBDETAIL",    limit: 2147483647, default: "",                                                                                                                                                                                                                                                               null: false
    t.char       "TBNAME",      limit: 254,        default: "                                                                                                                                                                                                                                                              ", null: false
    t.integer    "TBTRAITID"
    t.integer    "TBDEFAULT",                      default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer    "TBZOOM",                         default: 100,                                                                                                                                                                                                                                                              null: false
    t.index ["TBTABLE", "TBKEY"], name: "IDX_TBTABLE_TBKEY"
  end

  create_table "LBX001", primary_key: "TBID", force: :cascade do |t|
    t.binary  "TBPATH",   limit: 2147483647
    t.char    "TBNAME",   limit: 25,         default: "                         ",                          null: false
    t.char    "TBDETAIL", limit: 50,         default: "                                                  ", null: false
    t.integer "TBEXPT",                      default: 0,                                                    null: false
    t.integer "TBTYPE",                      default: 1,                                                    null: false
    t.boolean "TBLAST",                      default: false,                                                null: false
    t.binary  "TBPATH2",  limit: 2147483647
    t.index ["TBNAME"], name: "IDX_TBNAME"
  end

  create_table "LCK001", id: false, force: :cascade do |t|
    t.integer "TBTABLE", default: 0, null: false
    t.integer "TBID",    default: 0, null: false
    t.integer "TBUSER",  default: 0, null: false
    t.index ["TBTABLE", "TBID", "TBUSER"], name: "IDX_TBTABLE_TBID", unique: true
  end

  create_table "LOC001", primary_key: "TBID", force: :cascade do |t|
    t.char    "TBNAME",     limit: 125,                         default: "                                                                                                                             "
    t.char    "TBABREV",    limit: 4,                           default: "    ",                                                                                                                                                                                                                                                           null: false
    t.char    "TBDETAIL",   limit: 254,                         default: "                                                                                                                                                                                                                                                              ", null: false
    t.char    "TBPERSON",   limit: 100,                         default: "                                                                                                    ",                                                                                                                                                           null: false
    t.char    "TBPHONE",    limit: 15,                          default: "               ",                                                                                                                                                                                                                                                null: false
    t.char    "TBFAX",      limit: 15,                          default: "               ",                                                                                                                                                                                                                                                null: false
    t.char    "TBMAP",      limit: 4,                           default: "    ",                                                                                                                                                                                                                                                           null: false
    t.decimal "TBGPS_LAT",              precision: 6, scale: 2, default: 0.0,                                                                                                                                                                                                                                                              null: false
    t.decimal "TBGPS_LONG",             precision: 6, scale: 2, default: 0.0,                                                                                                                                                                                                                                                              null: false
    t.char    "TBEMAIL",    limit: 254
    t.index ["TBABREV"], name: "IDX_TBABREV", unique: true
    t.index ["TBNAME"], name: "IDX_TBNAME", unique: true
  end

  create_table "LOC002", primary_key: "TBID", force: :cascade do |t|
    t.char    "TBNAME",    limit: 50,  default: "                                                  ",                                                                                                                                                                                                             null: false
    t.char    "TBDETAIL",  limit: 254, default: "                                                                                                                                                                                                                                                              ", null: false
    t.integer "TBFOLDER1",             default: -1,                                                                                                                                                                                                                                                               null: false
    t.index ["TBNAME"], name: "IDX_TBNAME", unique: true
  end

  create_table "LOC003", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBFOLDER", default: 0, null: false
    t.integer "TBITEM",   default: 0, null: false
    t.index ["TBFOLDER", "TBITEM"], name: "IDX_TBFOLDER_TBITEM", unique: true
  end

  create_table "LOC004", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBKTRAIT",             default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer "TBKLOC",               default: 0,                                                                                                                                                                                                                                                                null: false
    t.char    "TBDATA",   limit: 254, default: "                                                                                                                                                                                                                                                              ", null: false
    t.index ["TBKLOC", "TBKTRAIT"], name: "IDX_TBKLOC_TBKTRAIT", unique: true
  end

  create_table "LOC005", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBKTRAIT", default: 0,     null: false
    t.boolean "TBVIEW",   default: true,  null: false
    t.boolean "TBLOCK",   default: false, null: false
    t.index ["TBKTRAIT"], name: "IDX_TBKTRAIT", unique: true
  end

  create_table "M001", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBDTYPE",              default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer "TBATYPE",              default: 0,                                                                                                                                                                                                                                                                null: false
    t.char    "TBDMODEL", limit: 254, default: "                                                                                                                                                                                                                                                              ", null: false
    t.char    "TBNAME",   limit: 25,  default: "                         ",                                                                                                                                                                                                                                      null: false
    t.index ["TBNAME"], name: "IDX_TBNAME", unique: true
  end

  create_table "MBR01", primary_key: "TBID", force: :cascade do |t|
    t.char "TBNAME", limit: 25, null: false
  end

  create_table "MBR02", id: false, force: :cascade do |t|
    t.integer    "TBLINK",                       null: false
    t.text_basic "TBPTABLE",  limit: 2147483647
    t.text_basic "TBCTABLE",  limit: 2147483647
    t.varchar    "TBMREL",    limit: 254
    t.varchar    "TBMINDEX",  limit: 254
    t.text_basic "TBPRELOAD", limit: 2147483647
    t.text_basic "TBCRELOAD", limit: 2147483647
  end

  create_table "NUD01", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBKNUR",                default: 0,                                                    null: false
    t.integer "TBENT1",                default: 0,                                                    null: false
    t.integer "TBPLOT",                default: 0,                                                    null: false
    t.integer "TBSEED",                default: 0,                                                    null: false
    t.integer "TBFACT1",               default: 0,                                                    null: false
    t.integer "TBDSGNPLOT",            default: 0,                                                    null: false
    t.integer "TBCHECK",               default: 0,                                                    null: false
    t.integer "TBRANGE",               default: 0,                                                    null: false
    t.integer "TBROW",                 default: 0,                                                    null: false
    t.integer "TBHARVEST",             default: 0,                                                    null: false
    t.integer "TBPLANTER",             default: 0,                                                    null: false
    t.boolean "TBPARENT",              default: false,                                                null: false
    t.integer "TBBLOCK",               default: 1,                                                    null: false
    t.integer "TBENT2",                default: 0,                                                    null: false
    t.integer "TBENT3",                default: 0,                                                    null: false
    t.integer "TBENT4",                default: 0,                                                    null: false
    t.integer "TBLOC_PLOT",            default: 0,                                                    null: false
    t.integer "TBFACT2",               default: 0,                                                    null: false
    t.integer "TBFACT3",               default: 0,                                                    null: false
    t.integer "TBFACT4",               default: 0,                                                    null: false
    t.integer "TBENDPLOT",             default: 0,                                                    null: false
    t.char    "TBSELECT",   limit: 50, default: "                                                  ", null: false
    t.integer "TBCONE",                default: 0,                                                    null: false
    t.integer "TBPASS",                default: 0,                                                    null: false
    t.integer "TBFILL",                default: 0,                                                    null: false
    t.index ["TBKNUR"], name: "IDX_TBKNUR"
  end

  create_table "NUD02", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBEXPT_PLOT",             default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer "TBKNUR",                  default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer "TBKTRAIT",                default: 0,                                                                                                                                                                                                                                                                null: false
    t.char    "TBDATA",      limit: 254, default: "                                                                                                                                                                                                                                                              ", null: false
    t.integer "TBSUBPLOT",               default: 0,                                                                                                                                                                                                                                                                null: false
    t.boolean "TBMISSING",               default: false,                                                                                                                                                                                                                                                            null: false
    t.integer "TBSEC_LEVEL",             default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer "TBYEAR",                  default: 0,                                                                                                                                                                                                                                                                null: false
    t.boolean "TBAVG",                   default: false,                                                                                                                                                                                                                                                            null: false
    t.index ["TBEXPT_PLOT", "TBKTRAIT", "TBYEAR"], name: "IDX_TBEXPT_PLOT_TBKTRAIT_TBYEAR", unique: true
    t.index ["TBKNUR"], name: "IDX_TBKNUR"
  end

  create_table "NUD03", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBNPLOT",             default: 0,                                                    null: false
    t.integer "TBSPNUM",             default: 0,                                                    null: false
    t.integer "TBKNUR",              default: 0,                                                    null: false
    t.integer "TBYEAR",              default: 0,                                                    null: false
    t.char    "TBSELECT", limit: 50, default: "                                                  ", null: false
    t.index ["TBKNUR"], name: "IDX_TBKNUR"
    t.index ["TBNPLOT", "TBSPNUM", "TBYEAR"], name: "IDX_TBNPLOT_TBSPNUM_TBYEAR", unique: true
    t.index ["TBSPNUM"], name: "IDX_TBSPNUM"
  end

  create_table "NUD04", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBKSBPLOT",             default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer "TBKTRAIT",              default: 0,                                                                                                                                                                                                                                                                null: false
    t.char    "TBDATAC",   limit: 254, default: "                                                                                                                                                                                                                                                              ", null: false
    t.boolean "TBMISSING",             default: false,                                                                                                                                                                                                                                                            null: false
    t.index ["TBKSBPLOT", "TBKTRAIT"], name: "IDX_TBKSBPLOT_TBKTRAIT", unique: true
  end

  create_table "NUD05", primary_key: "TBID", force: :cascade do |t|
    t.integer       "TBEXPT",                        default: 0, null: false
    t.integer       "TBFPLOT",                       default: 0, null: false
    t.integer       "TBMPLOT",                       default: 0, null: false
    t.integer       "TBFKEY",                        default: 0, null: false
    t.integer       "TBMKEY",                        default: 0, null: false
    t.integer       "TBMPLANT",                      default: 0, null: false
    t.integer       "TBFPLANT",                      default: 0, null: false
    t.integer       "TBMETHOD",                      default: 0, null: false
    t.integer       "TBYEAR",                        default: 0, null: false
    t.integer       "TBPLOT"
    t.char          "TBPID",      limit: 125
    t.char          "TBCID",      limit: 125
    t.integer       "TBGKEY"
    t.varchar_max   "TBPEDIGREE", limit: 2147483647
    t.integer       "TBACTION"
    t.integer       "TBGENOTYPE"
    t.integer       "TBSEEDLOT"
    t.integer       "TBUSERC"
    t.smalldatetime "TBDATEC"
  end

  create_table "NUD06", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBNBRID",              null: false
    t.integer "TBKEXPT",              null: false
    t.integer "TBKTRAIT",             null: false
    t.char    "TBDATAC",  limit: 254, null: false
    t.index ["TBKEXPT"], name: "IDX_NUD06_TBKEXPT"
    t.index ["TBKTRAIT"], name: "IDX_NUD06_TBKTRAIT"
    t.index ["TBNBRID"], name: "IDX_NUD06_TBNBRID"
  end

  create_table "NUD07", primary_key: "tbid", force: :cascade do |t|
    t.integer "tbkexpt",  null: false
    t.integer "tbktrait", null: false
    t.index ["tbkexpt"], name: "IDX_NUD07_TBKEXPT"
    t.index ["tbktrait"], name: "IDX_NUD07_TBKTRAIT"
  end

  create_table "NUD08", primary_key: "TBID", force: :cascade do |t|
    t.varchar "TBNAME",  limit: 250,  null: false
    t.varchar "TBDESCR", limit: 4000
  end

  create_table "NUG01", primary_key: "TBID", force: :cascade do |t|
    t.char          "TBNAME",    limit: 50,  default: "                                                  ",                                                                                                                                                                                                             null: false
    t.char          "TBDETAIL",  limit: 254, default: "                                                                                                                                                                                                                                                              ", null: false
    t.smalldatetime "TBDATEC",               default: '01-01-1900 00:00:00.0',                                                                                                                                                                                                                                          null: false
    t.smalldatetime "TBDATEM",               default: -> { "getdate()" },                                                                                                                                                                                                                                               null: false
    t.integer       "TBUSERC",               default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBUSERM",               default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBFOLDER1",             default: -1,                                                                                                                                                                                                                                                               null: false
    t.integer       "TBSHOW",                default: 1,                                                                                                                                                                                                                                                                null: false
    t.index ["TBNAME"], name: "IDX_TBNAME", unique: true
  end

  create_table "NUG02", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBITEM",   default: 0,    null: false
    t.integer "TBFOLDER", default: 0,    null: false
    t.boolean "TBLOAD",   default: true, null: false
    t.index ["TBFOLDER", "TBITEM"], name: "IDX_TBFOLDER_TBITEM", unique: true
  end

  create_table "NUH01", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBKNUR",   null: false
    t.integer "TBTYPE",   null: false
    t.integer "TBLEVEL",  null: false
    t.integer "TBKTRAIT", null: false
  end

  create_table "NUM01", id: false, force: :cascade do |t|
    t.integer  "TBKNUR",                            default: 0,                       null: false
    t.integer  "TBKTRAIT",                          default: 0,                       null: false
    t.integer  "TBENT1",                            default: 0,                       null: false
    t.decimal  "TBAVG",    precision: 20, scale: 6, default: 0.0,                     null: false
    t.integer  "TBRANK",                            default: 0,                       null: false
    t.decimal  "TBCV",     precision: 20, scale: 6, default: 0.0,                     null: false
    t.decimal  "TBSERR",   precision: 20, scale: 6, default: 0.0,                     null: false
    t.decimal  "TBLSD",    precision: 20, scale: 6, default: 0.0,                     null: false
    t.decimal  "TBPCHK",   precision: 20, scale: 6, default: 0.0,                     null: false
    t.decimal  "TBPTMN",   precision: 20, scale: 6, default: 0.0,                     null: false
    t.decimal  "TBPC1",    precision: 20, scale: 6, default: 0.0,                     null: false
    t.decimal  "TBPC2",    precision: 20, scale: 6, default: 0.0,                     null: false
    t.decimal  "TBPC3",    precision: 20, scale: 6, default: 0.0,                     null: false
    t.decimal  "TBPC4",    precision: 20, scale: 6, default: 0.0,                     null: false
    t.decimal  "TBPC5",    precision: 20, scale: 6, default: 0.0,                     null: false
    t.decimal  "TBPC6",    precision: 20, scale: 6, default: 0.0,                     null: false
    t.decimal  "TBPC7",    precision: 20, scale: 6, default: 0.0,                     null: false
    t.decimal  "TBPC8",    precision: 20, scale: 6, default: 0.0,                     null: false
    t.decimal  "TBPC9",    precision: 20, scale: 6, default: 0.0,                     null: false
    t.decimal  "TBPC10",   precision: 20, scale: 6, default: 0.0,                     null: false
    t.integer  "TBFACT1",                           default: 0,                       null: false
    t.integer  "TBYEAR",                            default: 0,                       null: false
    t.integer  "TBNCR",                             default: 0,                       null: false
    t.datetime "TBCDATE",                           default: '01-01-1900 00:00:00.0', null: false
    t.index ["TBENT1", "TBFACT1", "TBKTRAIT", "TBYEAR"], name: "IDX_TBENT1_TBFACT1_TBKTRAIT_TBYEAR"
    t.index ["TBENT1", "TBKTRAIT", "TBYEAR"], name: "IDX_TBENT1_TBKTRAIT_TBYEAR"
    t.index ["TBKNUR"], name: "IDX_TBKNUR"
    t.index ["TBKTRAIT"], name: "IDX_TBKTRAIT"
  end

  create_table "NUM02", id: false, force: :cascade do |t|
    t.integer  "TBKNUR",              default: 0,                                                    null: false
    t.char     "TBSTATS",  limit: 25, default: "                         ",                          null: false
    t.char     "TBAVG",    limit: 50, default: "                                                  ", null: false
    t.integer  "TBKTRAIT",            default: 0,                                                    null: false
    t.datetime "TBDATE",              default: '01-01-1900 00:00:00.0',                              null: false
    t.integer  "TBYEAR",              default: 0,                                                    null: false
    t.index ["TBKNUR"], name: "IDX_TBKNUR"
    t.index ["TBKTRAIT", "TBYEAR"], name: "IDX_TBKTRAIT_TBYEAR"
  end

  create_table "NUM03", id: false, force: :cascade do |t|
    t.integer  "TBKNUR",               default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer  "TBKTRAIT",             default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer  "TBENT1",               default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer  "TBFACT1",              default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer  "TBYEAR",               default: 0,                                                                                                                                                                                                                                                                null: false
    t.char     "TBDATAC",  limit: 254, default: "                                                                                                                                                                                                                                                              ", null: false
    t.integer  "TBNCR",                default: 0,                                                                                                                                                                                                                                                                null: false
    t.datetime "TBCDATE",              default: '01-01-1900 00:00:00.0',                                                                                                                                                                                                                                          null: false
    t.index ["TBKNUR"], name: "IDX_TBKNUR"
    t.index ["TBKTRAIT", "TBYEAR"], name: "IDX_TBKTRAIT_TBYEAR"
  end

  create_table "NUM04", primary_key: "TBID", force: :cascade do |t|
    t.integer    "TBKNUR",                      default: 0,    null: false
    t.integer    "TBKTRAIT",                    default: 0,    null: false
    t.boolean    "TBVIEW",                      default: true, null: false
    t.integer    "TBVIEW2",                     default: 1,    null: false
    t.integer    "TBYEAR",                      default: 0,    null: false
    t.text_basic "TBNOTES",  limit: 2147483647, default: "",   null: false
    t.text_basic "TBANOVA",  limit: 2147483647, default: "",   null: false
    t.index ["TBKNUR"], name: "IDX_TBKNUR"
    t.index ["TBKTRAIT", "TBYEAR"], name: "IDX_TBKTRAIT_TBYEAR"
  end

  create_table "NUR01", primary_key: "TBID", force: :cascade do |t|
    t.char          "TBNAME",       limit: 50,  default: "                                                  ",                                                                                                                                                                                                             null: false
    t.char          "TBDETAIL",     limit: 254, default: "                                                                                                                                                                                                                                                              ", null: false
    t.integer       "TBKLOC",                   default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBYEAR",                   default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBENTRIES",                default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBCHECKS",                 default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBPLOTS",                  default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBPLOTI",                  default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBSEEDNUM",                default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBRANDFST",                default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBPLOTL",                  default: 0,                                                                                                                                                                                                                                                                null: false
    t.smalldatetime "TBDATEC",                  default: '01-01-1900 00:00:00.0',                                                                                                                                                                                                                                          null: false
    t.smalldatetime "TBDATEM",                  default: -> { "getdate()" },                                                                                                                                                                                                                                               null: false
    t.integer       "TBUSERC",                  default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBUSERM",                  default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBFN",                     default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBFIELDSET",               default: 0,                                                                                                                                                                                                                                                                null: false
    t.boolean       "TBCOMPRESS",               default: false,                                                                                                                                                                                                                                                            null: false
    t.boolean       "TBSEGPOP",                 default: false,                                                                                                                                                                                                                                                            null: false
    t.integer       "TBTRIAL",                  default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBDESIGN",                 default: 19,                                                                                                                                                                                                                                                               null: false
    t.integer       "TBBLOCNUM",                default: 1,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBBLOCINCRE",              default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBPARAM1",                 default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBPARAM2",                 default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBPARAM3",                 default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBPARAM4",                 default: 0,                                                                                                                                                                                                                                                                null: false
    t.boolean       "TBSERPENTINE",             default: false,                                                                                                                                                                                                                                                            null: false
    t.integer       "TBFOLDER",                 default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBIMPORT",                 default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBMODEL",                  default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBOPTION",                 default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBLOCINC",                 default: 0,                                                                                                                                                                                                                                                                null: false
    t.boolean       "TBPNL",                    default: false,                                                                                                                                                                                                                                                            null: false
    t.integer       "TBSTYLE",                  default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBVIEW",                   default: 0,                                                                                                                                                                                                                                                                null: false
    t.boolean       "TBSUBPLOT",                default: false,                                                                                                                                                                                                                                                            null: false
    t.integer       "TBSUBTYPE",                default: 1,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBEXVIEW",                 default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBEXDEPTH",                default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBMVIEW",                  default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBSUBSTART",               default: 1,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBSUBINCR",                default: 1,                                                                                                                                                                                                                                                                null: false
    t.boolean       "TBSUBCNT",                 default: false,                                                                                                                                                                                                                                                            null: false
    t.index ["TBKLOC"], name: "IDX_TBKLOC"
    t.index ["TBNAME"], name: "IDX_TBNAME", unique: true
    t.index ["TBYEAR"], name: "IDX_TBYEAR"
  end

  create_table "NUR02", primary_key: "TBID", force: :cascade do |t|
    t.integer    "TBKTRAIT",                                      null: false
    t.integer    "TBKNUR",                                        null: false
    t.integer    "TBVARIANT",                     default: 0,     null: false
    t.boolean    "TBLOAD",                        default: true,  null: false
    t.boolean    "TBREADONLY",                    default: false, null: false
    t.boolean    "TBSUBLOCK",                     default: false, null: false
    t.text_basic "TBNOTES",    limit: 2147483647, default: ""
    t.boolean    "TBCAL",                         default: true,  null: false
    t.integer    "TBSUBCAL",                      default: 1,     null: false
    t.boolean    "TBNORMAL",                      default: false, null: false
    t.index ["TBKNUR", "TBKTRAIT"], name: "IDX_TBKNUR_TBKTRAIT", unique: true
    t.index ["TBKNUR"], name: "IDX_INC_TBKTRAIT_TBKNUR"
    t.index ["TBKTRAIT"], name: "IDX_INC_TBKNUR_TBKTRAIT"
  end

  create_table "NUR03", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBKNUR",   default: 0, null: false
    t.integer "TBKTRAIT", default: 0, null: false
    t.index ["TBKNUR"], name: "IDX_INC_TBKTRAIT_TBKNUR"
    t.index ["TBKTRAIT"], name: "IDX_INC_TBKNUR_TBKTRAIT"
  end

  create_table "NUR04", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBKNUR",   default: 0, null: false
    t.integer "TBKTRAIT", default: 0, null: false
    t.index ["TBKNUR"], name: "IDX_INC_TBKTRAIT_TBKNUR"
    t.index ["TBKTRAIT"], name: "IDX_INC_TBKNUR_TBKTRAIT"
  end

  create_table "NUR05", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBKNUR",    default: 0,    null: false
    t.integer "TBYEAR",    default: 0,    null: false
    t.boolean "TBDISPLAY", default: true, null: false
    t.index ["TBKNUR"], name: "IDX_INC_TBYEAR_TBKNUR"
    t.index ["TBYEAR"], name: "IDX_INC_TBKNUR_TBYEAR"
  end

  create_table "NUR06", primary_key: "TBID", force: :cascade do |t|
    t.integer       "TBKNUR",                            default: 0,                       null: false
    t.integer       "TBKTREAT",                          default: 0,                       null: false
    t.integer       "TBLOT",                             default: 0,                       null: false
    t.decimal       "TBAMOUNT", precision: 20, scale: 5, default: 0.0,                     null: false
    t.integer       "TBUSERC",                           default: 0,                       null: false
    t.integer       "TBUSERM",                           default: 0,                       null: false
    t.smalldatetime "TBDATEC",                           default: '01-01-1900 00:00:00.0', null: false
    t.smalldatetime "TBDATEM",                           default: -> { "getdate()" },      null: false
    t.index ["TBKNUR"], name: "IDX_INC_TBKTREAT_TBKNUR"
    t.index ["TBKTREAT"], name: "IDX_INC_TBKNUR_TBKTREAT"
  end

  create_table "NUT01", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBKTRAIT", default: 0,     null: false
    t.boolean "TBVIEW",   default: true,  null: false
    t.boolean "TBLOCK",   default: false, null: false
    t.index ["TBKTRAIT"], name: "IDX_TBKTRAIT", unique: true
  end

  create_table "NUT02", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBKTRAIT",             default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer "TBKNUR",               default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer "TBYEAR",               default: 0,                                                                                                                                                                                                                                                                null: false
    t.char    "TBDATA",   limit: 254, default: "                                                                                                                                                                                                                                                              ", null: false
    t.index ["TBKNUR", "TBKTRAIT", "TBYEAR"], name: "IDX_TBKNUR_TBKTRAIT_TBYEAR", unique: true
  end

  create_table "OP001", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBDTYPE",               default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer "TBATYPE",               default: 0,                                                                                                                                                                                                                                                                null: false
    t.char    "TBAOPTION", limit: 100, default: "                                                                                                    ",                                                                                                                                                           null: false
    t.char    "TBDOPTION", limit: 254, default: "                                                                                                                                                                                                                                                              ", null: false
    t.char    "TBNAME",    limit: 25,  default: "                         ",                                                                                                                                                                                                                                      null: false
    t.index ["TBNAME"], name: "IDX_TBNAME", unique: true
  end

  create_table "OPT001", primary_key: "TBID", force: :cascade do |t|
    t.char    "TBNAME",   limit: 100, default: "                                                                                                    ", null: false
    t.integer "TBWIDTH",              default: 0,                                                                                                      null: false
    t.integer "TBHEIGHT",             default: 0,                                                                                                      null: false
    t.integer "TBXPOS",               default: 0,                                                                                                      null: false
    t.integer "TBYPOS",               default: 0,                                                                                                      null: false
    t.index ["TBNAME"], name: "IDX_TBNAME", unique: true
  end

  create_table "PLA001", primary_key: "TBID", force: :cascade do |t|
    t.char    "TBNAME",   limit: 50, default: "                                                  ", null: false
    t.integer "TBPLOTS",             default: 0,                                                    null: false
    t.integer "TBCONES",             default: 0,                                                    null: false
    t.integer "TBDIRECT",            default: 0,                                                    null: false
    t.integer "TBCONROW",            default: 0,                                                    null: false
    t.index ["TBNAME"], name: "IDX_TBNAME", unique: true
  end

  create_table "PO001", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBFOLDER", default: 0, null: false
    t.integer "TBITEM",   default: 0, null: false
    t.index ["TBFOLDER"], name: "IDX_INC_TBITEM_TBFOLDER"
    t.index ["TBITEM"], name: "IDX_INC_TBFOLDER_TBITEM"
  end

  create_table "SCA001", primary_key: "TBID", force: :cascade do |t|
    t.char    "TBNAME",   limit: 25,  default: "                         ",                                                                                                                              null: false
    t.char    "TBDETAIL", limit: 150, default: "                                                                                                                                                      ", null: false
    t.integer "TBNTRAIT",             default: 0,                                                                                                                                                        null: false
    t.integer "TBCTRAIT",             default: 0,                                                                                                                                                        null: false
    t.integer "TBTYPE",               default: 0,                                                                                                                                                        null: false
    t.index ["TBNAME"], name: "IDX_TBNAME", unique: true
  end

  create_table "SCA002", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBSCALE",                                     default: 0,                                                    null: false
    t.char    "TBASCII", limit: 25,                          default: "                         ",                          null: false
    t.char    "TBDESC",  limit: 50,                          default: "                                                  ", null: false
    t.decimal "TBVALUE",            precision: 10, scale: 2, default: 0.0,                                                  null: false
    t.decimal "TBMIN",              precision: 10, scale: 2, default: 0.0,                                                  null: false
    t.decimal "TBMAX",              precision: 10, scale: 2, default: 0.0,                                                  null: false
    t.index ["TBSCALE"], name: "IDX_TBSCALE"
  end

  create_table "SI001", primary_key: "TBID", force: :cascade do |t|
    t.integer    "TBWIDTH",                                               default: 0,                                                                                                                               null: false
    t.integer    "TBHEIGHT",                                              default: 0,                                                                                                                               null: false
    t.char       "TBNAME",     limit: 125,                                default: "                                                                                                                             ", null: false
    t.integer    "TBPLANTER",                                             default: 0,                                                                                                                               null: false
    t.integer    "TBHARVEST",                                             default: 0,                                                                                                                               null: false
    t.integer    "TBHORDER",                                              default: 0,                                                                                                                               null: false
    t.integer    "TBHSTART",                                              default: 0,                                                                                                                               null: false
    t.boolean    "TBSHOW",                                                default: true,                                                                                                                            null: false
    t.boolean    "TBPDON",                                                default: false,                                                                                                                           null: false
    t.text_basic "TBPDA",      limit: 2147483647,                         default: "",                                                                                                                              null: false
    t.integer    "TBLOC",                                                 default: 0,                                                                                                                               null: false
    t.decimal    "TBYEAR",                        precision: 4, scale: 0, default: 0.0,                                                                                                                             null: false
    t.integer    "TBPLTSTART",                                            default: 1,                                                                                                                               null: false
    t.integer    "TBFILLER",                                              default: 0,                                                                                                                               null: false
    t.integer    "TBPORDER"
    t.integer    "TBPLOTROW"
    t.index ["TBNAME"], name: "IDX_TBNAME", unique: true
  end

  create_table "SI003", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBSITE",     default: 0,     null: false
    t.integer "TBWIDTH",    default: 0,     null: false
    t.integer "TBHEIGHT",   default: 0,     null: false
    t.integer "TBSROW",     default: 0,     null: false
    t.integer "TBSRANGE",   default: 0,     null: false
    t.integer "TBEXPT",     default: 0,     null: false
    t.boolean "TBSERPENTI", default: false, null: false
    t.integer "TBPNUMST",   default: 0,     null: false
    t.integer "TBSTARTP",   default: 0,     null: false
    t.integer "TBENDP",     default: 0,     null: false
    t.integer "TBTOTALP",   default: 0,     null: false
    t.integer "TBPNUM",     default: 0,     null: false
    t.integer "TBTYPE",     default: 1,     null: false
    t.integer "TBCOLOR",    default: -1,    null: false
    t.integer "TBPLOTROW"
    t.index ["TBSITE"], name: "IDX_TBSITE"
  end

  create_table "SI004", primary_key: "TBFILLER", force: :cascade do |t|
    t.integer "TBSITE",    default: 0,  null: false
    t.integer "TBVARIETY", default: 0,  null: false
    t.integer "TBWIDTH",   default: 0,  null: false
    t.integer "TBHEIGHT",  default: 0,  null: false
    t.integer "TBSROW",    default: 0,  null: false
    t.integer "TBSRANGE",  default: 0,  null: false
    t.integer "TBCOLOR",   default: -1, null: false
    t.integer "TBPLOTROW"
    t.index ["TBSITE"], name: "IDX_TBSITE"
  end

  create_table "SI005", id: false, force: :cascade do |t|
    t.integer "TBSITE",               default: 0,                           null: false
    t.char    "TBNAME",    limit: 25, default: "                         ", null: false
    t.integer "TBSTRGE",              default: 0,                           null: false
    t.integer "TBENDRGE",             default: 0,                           null: false
    t.integer "TBSTROW",              default: 0,                           null: false
    t.integer "TBENDROW",             default: 0,                           null: false
    t.integer "TBHORDER",             default: 0,                           null: false
    t.integer "TBHSTART",             default: 0,                           null: false
    t.boolean "TBHUSE",               default: false,                       null: false
    t.integer "TBHNUM",               default: 0,                           null: false
    t.integer "TBPLOTROW"
    t.index ["TBNAME"], name: "IDX_TBNAME"
    t.index ["TBSITE"], name: "IDX_TBSITE"
  end

  create_table "SI006", primary_key: "TBID", force: :cascade do |t|
    t.char          "TBNAME",  limit: 50, default: "                                                  ", null: false
    t.smalldatetime "TBDATEC",            default: '01-01-1900 00:00:00.0',                              null: false
    t.smalldatetime "TBDATEM",            default: -> { "getdate()" },                                   null: false
    t.integer       "TBUSERC",            default: 0,                                                    null: false
    t.integer       "TBUSERM",            default: 0,                                                    null: false
    t.index ["TBNAME"], name: "IDX_TBNAME", unique: true
  end

  create_table "SI007", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBFOLDER", default: 0, null: false
    t.integer "TBITEM",   default: 0, null: false
    t.index ["TBFOLDER", "TBITEM"], name: "IDX_TBFOLDER_TBITEM", unique: true
  end

  create_table "SIM001", primary_key: "TBID", force: :cascade do |t|
    t.char          "TBNAME",       limit: 125,                          default: "                                                                                                                             "
    t.char          "TBDETAIL",     limit: 150,                          default: "                                                                                                                                                      ", null: false
    t.integer       "TBMEMBER",                                          default: 0,                                                                                                                                                        null: false
    t.integer       "TBKNODE",                                           default: 0,                                                                                                                                                        null: false
    t.integer       "TBSTATUS",                                          default: 0,                                                                                                                                                        null: false
    t.decimal       "TBVIABLE",                 precision: 20, scale: 5, default: 100.0,                                                                                                                                                    null: false
    t.decimal       "TBSEEDWEIGHT",             precision: 20, scale: 5, default: 0.0,                                                                                                                                                      null: false
    t.integer       "TBUSERC",                                           default: 0,                                                                                                                                                        null: false
    t.smalldatetime "TBDATEC",                                           default: '01-01-1900 00:00:00.0',                                                                                                                                  null: false
    t.integer       "TBKUNITSW",                                         default: 0,                                                                                                                                                        null: false
    t.decimal       "TBTOTAL",                  precision: 20, scale: 5, default: 0.0,                                                                                                                                                      null: false
    t.integer       "TBTOTALUNIT",                                       default: 0,                                                                                                                                                        null: false
    t.index ["TBKNODE"], name: "IDX_TBKNODE"
    t.index ["TBMEMBER"], name: "IDX_TBMEMBER"
    t.index ["TBNAME"], name: "IDX_TBNAME", unique: true
  end

  create_table "SIM003", primary_key: "TBID", force: :cascade do |t|
    t.char "TBNAME",  limit: 50, default: "                                                  ", null: false
    t.char "TBABREV", limit: 4,  default: "    ",                                               null: false
    t.index ["TBABREV"], name: "IDX_TBABREV", unique: true
    t.index ["TBNAME"], name: "IDX_TBNAME", unique: true
  end

  create_table "SIM003A", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBLINK",               default: 0,                                                                                                                                                        null: false
    t.integer "TBKLOC",                                                                                                                                                                                  null: false
    t.char    "TBDETAIL", limit: 150, default: "                                                                                                                                                      ", null: false
    t.index ["TBLINK", "TBKLOC"], name: "IDX_TBLINK_TBKLOC", unique: true
  end

  create_table "SIM004E", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBKEXPT",  default: 0, null: false
    t.integer "TBKTREAT", default: 0, null: false
    t.integer "TBENTRY",  default: 0, null: false
    t.integer "TBKTRAN",  default: 0, null: false
    t.integer "TBYEAR",   default: 0, null: false
    t.integer "TBKPLOT",  default: 0, null: false
    t.index ["TBKEXPT", "TBENTRY", "TBYEAR"], name: "IDX_TBKEXPT_TBENTRY_TBYEAR"
    t.index ["TBKTRAN"], name: "IDX_TBKTRAN", unique: true
  end

  create_table "SIM004M", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBKTRAND", default: 0, null: false
    t.integer "TBKTRANI", default: 0, null: false
    t.index ["TBKTRAND"], name: "IDX_TBKTRAND"
    t.index ["TBKTRANI"], name: "IDX_TBKTRANI"
  end

  create_table "SIM004N", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBKNUR",   default: 0, null: false
    t.integer "TBKTREAT", default: 0, null: false
    t.integer "TBENTRY",  default: 0, null: false
    t.integer "TBKTRAN",  default: 0, null: false
    t.integer "TBYEAR",   default: 0, null: false
    t.integer "TBKPLOT",  default: 0, null: false
    t.index ["TBKNUR", "TBENTRY", "TBYEAR"], name: "IDX_TBKNUR_TBENTRY_TBYEAR"
    t.index ["TBKTRAN"], name: "IDX_TBKTRAN", unique: true
  end

  create_table "SIM004S", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBKTRAND", default: 0, null: false
    t.integer "TBKTRANI", default: 0, null: false
    t.index ["TBKTRAND"], name: "IDX_TBKTRAND"
    t.index ["TBKTRANI"], name: "IDX_TBKTRANI"
  end

  create_table "SIM005", primary_key: "TBID", force: :cascade do |t|
    t.integer       "TBKLOT",                                                    default: 0,                  null: false
    t.integer       "TBTYPE",                                                    default: 1,                  null: false
    t.integer       "TBSTATUS",                                                  default: 2,                  null: false
    t.decimal       "TBQUANTITY",                       precision: 20, scale: 5, default: 0.0,                null: false
    t.integer       "TBUNITSKEY",                                                default: 0,                  null: false
    t.integer       "TBCOMMENT",                                                 default: 0,                  null: false
    t.integer       "TBACTION",                                                  default: 0,                  null: false
    t.smalldatetime "TBDATEC",                                                   default: -> { "getdate()" }, null: false
    t.varchar_max   "TBCOMMENTTEXT", limit: 2147483647
    t.char          "TBUSERID",      limit: 50
    t.decimal       "TBVIABLE",                         precision: 20, scale: 5
    t.decimal       "TBSEEDWEIGHT",                     precision: 20, scale: 5
    t.char          "TBKUNITSW",     limit: 10
    t.index ["TBKLOT"], name: "IDX_TBKLOT"
    t.index ["TBUNITSKEY"], name: "IDX_TBUNITSKEY"
  end

  create_table "SIM006", primary_key: "TBID", force: :cascade do |t|
    t.char    "TBNAME",    limit: 50, default: "                                                  ", null: false
    t.char    "TBABBREV",  limit: 10, default: "          ",                                         null: false
    t.integer "TBTYPE",               default: 1,                                                    null: false
    t.integer "TBSYSUNIT",            default: 0,                                                    null: false
    t.index ["TBABBREV"], name: "IDX_TBABBREV", unique: true
    t.index ["TBNAME"], name: "IDX_TBNAME", unique: true
  end

  create_table "SIM006A", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBUNIT",                               default: 0,   null: false
    t.integer "TBUNIT_CONV",                          default: 0,   null: false
    t.decimal "TBAMOUNT",    precision: 20, scale: 5, default: 0.0, null: false
    t.index ["TBUNIT", "TBUNIT_CONV"], name: "IDX_TBUNIT_TBUNIT_CONV", unique: true
  end

  create_table "SIM007", primary_key: "TBID", force: :cascade do |t|
    t.char "TBNAME", limit: 150, default: "                                                                                                                                                      ", null: false
    t.index ["TBNAME"], name: "IDX_TBNAME", unique: true
  end

  create_table "SIM008", primary_key: "TBID", force: :cascade do |t|
    t.varchar_max "TBEQUATION", limit: 2147483647, default: "", null: false
    t.integer     "TBTYPE",                        default: 0,  null: false
  end

  create_table "SIM009", primary_key: "TBID", force: :cascade do |t|
    t.char    "TBNAME",    limit: 125, default: "                                                                                                                             "
    t.char    "TBDETAIL",  limit: 254, default: "                                                                                                                                                                                                                                                              ", null: false
    t.integer "TBFOLDER1",             default: -1,                                                                                                                                                                                                                                                               null: false
    t.index ["TBNAME"], name: "IDX_TBNAME", unique: true
  end

  create_table "SIM009A", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBFOLDER", default: 0, null: false
    t.integer "TBITEM",   default: 0, null: false
    t.index ["TBFOLDER", "TBITEM"], name: "IDX_TBFOLDER_TBITEM", unique: true
  end

  create_table "SIM011", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBKTRAIT", default: 0,     null: false
    t.boolean "TBVIEW",   default: true,  null: false
    t.boolean "TBLOCK",   default: false, null: false
    t.index ["TBKTRAIT"], name: "IDX_TBKTRAIT", unique: true
  end

  create_table "SIM012", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBKLOT",               default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer "TBKTRAIT",             default: 0,                                                                                                                                                                                                                                                                null: false
    t.char    "TBDATA",   limit: 254, default: "                                                                                                                                                                                                                                                              ", null: false
    t.index ["TBKLOT", "TBKTRAIT"], name: "IDX_TBKLOT_TBKTRAIT", unique: true
  end

  create_table "SIM013E", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBKEXPT",  default: 0, null: false
    t.integer "TBKTREAT", default: 0, null: false
    t.integer "TBENTRY",  default: 0, null: false
    t.integer "TBKTRAN",  default: 0, null: false
    t.integer "TBFACT"
    t.index ["TBKEXPT", "TBKTREAT", "TBENTRY", "TBFACT"], name: "IDX_TBKEXPT_TBKTREAT_TBENTRY", unique: true
    t.index ["TBKTRAN"], name: "IDX_TBKTRAN", unique: true
  end

  create_table "SIM013N", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBKNUR",   null: false
    t.integer "TBKTREAT", null: false
    t.integer "TBENTRY",  null: false
    t.integer "TBKTRAN",  null: false
    t.integer "TBFACT"
    t.index ["TBKNUR", "TBKTREAT", "TBENTRY", "TBFACT"], name: "IDX_TBKNUR_TBKTREAT_TBENTRY", unique: true
    t.index ["TBKTRAN"], name: "IDX_TBKTRAN", unique: true
  end

  create_table "SIM014", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBTRAITID", null: false
    t.index ["TBTRAITID"], name: "IDX_TBTRAITID"
  end

  create_table "SM001", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBTYPE",  default: 0, null: false
    t.integer "TBTRAIT", default: 0, null: false
    t.integer "TBSET",   default: 0, null: false
    t.index ["TBTYPE", "TBSET"], name: "IDX_TBTYPE_TBSET"
  end

  create_table "SM002", primary_key: "TBID", force: :cascade do |t|
    t.char "TBNAME", limit: 25, default: "                         ", null: false
    t.index ["TBNAME"], name: "IDX_TBNAME", unique: true
  end

  create_table "SOR001", primary_key: "TBID", force: :cascade do |t|
    t.integer    "TBTYPE",                     default: 0,                                                    null: false
    t.char       "TBNAME",  limit: 50,         default: "                                                  ", null: false
    t.integer    "TBVALUE",                    default: 0,                                                    null: false
    t.text_basic "TBXML",   limit: 2147483647, default: "",                                                   null: false
    t.index ["TBNAME", "TBTYPE"], name: "IDX_TBNAME_TBTYPE", unique: true
  end

  create_table "TLBL001", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBTYPE",                     default: 0, null: false
    t.string  "TBNAME",  limit: 150,                    null: false
    t.binary  "TBLABEL", limit: 2147483647,             null: false
  end

  create_table "TRD01", primary_key: "TBID", force: :cascade do |t|
    t.char       "TBFLD_NAME",    limit: 10,                                  default: "          ",                                                                                                                                                                                                                                                     null: false
    t.char       "TBABREV",       limit: 4,                                   default: "    ",                                                                                                                                                                                                                                                           null: false
    t.char       "TBFLD_TYPE",    limit: 1,                                   default: " ",                                                                                                                                                                                                                                                              null: false
    t.decimal    "TBFLD_LEN",                        precision: 3,  scale: 0, default: 0.0,                                                                                                                                                                                                                                                              null: false
    t.decimal    "TBFLD_DEC",                        precision: 3,  scale: 0, default: 0.0,                                                                                                                                                                                                                                                              null: false
    t.char       "TBDETAIL",      limit: 254,                                 default: "                                                                                                                                                                                                                                                              ", null: false
    t.decimal    "TBVAL_MIN",                        precision: 20, scale: 5, default: 0.0,                                                                                                                                                                                                                                                              null: false
    t.decimal    "TBVAL_MAX",                        precision: 20, scale: 5, default: 0.0,                                                                                                                                                                                                                                                              null: false
    t.integer    "TBMISS_1",                                                  default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer    "TBMISS_2",                                                  default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer    "TBMISS_3",                                                  default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer    "TBMISS_4",                                                  default: 0,                                                                                                                                                                                                                                                                null: false
    t.decimal    "TBIDEAL",                          precision: 20, scale: 5, default: 0.0,                                                                                                                                                                                                                                                              null: false
    t.boolean    "TBFACTOR",                                                  default: false,                                                                                                                                                                                                                                                            null: false
    t.char       "TBTORDER",      limit: 1,                                   default: "D",                                                                                                                                                                                                                                                              null: false
    t.decimal    "TB_STD",                           precision: 2,  scale: 0, default: 0.0,                                                                                                                                                                                                                                                              null: false
    t.boolean    "TB_STATIC",                                                 default: false,                                                                                                                                                                                                                                                            null: false
    t.char       "TB_TRANS",      limit: 254,                                 default: "                                                                                                                                                                                                                                                              ", null: false
    t.boolean    "TB_DEF",                                                    default: false,                                                                                                                                                                                                                                                            null: false
    t.text_basic "TB_DEFINITION", limit: 2147483647,                          default: "",                                                                                                                                                                                                                                                               null: false
    t.boolean    "TBCDTSTAT",                                                 default: false,                                                                                                                                                                                                                                                            null: false
    t.integer    "TBCDTSTATO",                                                default: 0,                                                                                                                                                                                                                                                                null: false
    t.boolean    "TBCDLSTAT",                                                 default: false,                                                                                                                                                                                                                                                            null: false
    t.integer    "TBCDLSTATO",                                                default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer    "TBNNTREND",                                                 default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer    "TBNNDETR",                                                  default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer    "TBNNRU",                                                    default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer    "TBNNRA",                                                    default: 0,                                                                                                                                                                                                                                                                null: false
    t.text_basic "TBTREND",       limit: 2147483647,                          default: "",                                                                                                                                                                                                                                                               null: false
    t.index ["TBABREV"], name: "IDX_TBABREV", unique: true
    t.index ["TBFLD_NAME"], name: "IDX_TBNAME", unique: true
  end

  create_table "TRD02", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBUSERID",               default: 0,                                                                                                                                                                                                                                                                null: false
    t.char    "TBDETAIL",   limit: 254, default: "                                                                                                                                                                                                                                                              ", null: false
    t.char    "TBNAME",     limit: 125, default: "                                                                                                                             "
    t.integer "TBFOLDER1",              default: -1,                                                                                                                                                                                                                                                               null: false
    t.integer "TBMDISPLAY",             default: 0,                                                                                                                                                                                                                                                                null: false
    t.index ["TBNAME"], name: "IDX_TBNAME", unique: true
  end

  create_table "TRD03", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBITEM",   default: 0, null: false
    t.integer "TBFOLDER", default: 0, null: false
    t.index ["TBFOLDER", "TBITEM"], name: "IDX_TBFOLDER_TBITEM", unique: true
  end

  create_table "TRE008", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBMEMBER",  default: 0,     null: false
    t.boolean "TBSELECT1", default: false, null: false
    t.boolean "TBSELECT2", default: false, null: false
    t.integer "TBGROUP",   default: 0,     null: false
    t.index ["TBGROUP"], name: "IDX_INC_TBMEMBER_TBGROUP"
    t.index ["TBMEMBER"], name: "IDX_INC_TBGROUP_TBMEMBER"
  end

  create_table "TRE009", primary_key: "TBID", force: :cascade do |t|
    t.char    "TBNAME", limit: 25, default: "                         ", null: false
    t.integer "TBTYPE",            default: 0,                           null: false
    t.index ["TBNAME"], name: "IDX_INC_TBTYPE_TBNAME"
  end

  create_table "TRE01", primary_key: "TBID", force: :cascade do |t|
    t.integer     "TBPARENT",                       default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer     "TBFN",                           default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer     "TBCROSS",                        default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer     "TBSEED",                         default: 0,                                                                                                                                                                                                                                                                null: false
    t.char        "TBNAME",      limit: 125,        default: "                                                                                                                             ",                                                                                                                                  null: false
    t.char        "TBSOURCE",    limit: 150,        default: "                                                                                                                                                      ",                                                                                                         null: false
    t.varchar_max "TBPEDIGREE",  limit: 2147483647, default: "",                                                                                                                                                                                                                                                               null: false
    t.integer     "TBTYPE",                         default: 0,                                                                                                                                                                                                                                                                null: false
    t.varchar     "TBIDENTITY",  limit: 125,        default: "",                                                                                                                                                                                                                                                               null: false
    t.char        "TBSEX",       limit: 1,          default: " ",                                                                                                                                                                                                                                                              null: false
    t.char        "TBDETAIL",    limit: 254,        default: "                                                                                                                                                                                                                                                              ", null: false
    t.char        "TBSELECTION", limit: 254,        default: "                                                                                                                                                                                                                                                              ", null: false
    t.char        "TBLONG_DESC", limit: 100,        default: "                                                                                                    ",                                                                                                                                                           null: false
    t.integer     "TBHEREDITY",                     default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer     "TBCLONE",                        default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer     "TBMETHOD",                       default: 0,                                                                                                                                                                                                                                                                null: false
    t.boolean     "TBPASTPAR",                      default: false,                                                                                                                                                                                                                                                            null: false
    t.boolean     "TBPASTTRT",                      default: false,                                                                                                                                                                                                                                                            null: false
    t.boolean     "TBPASTPOP",                      default: false,                                                                                                                                                                                                                                                            null: false
    t.integer     "TBHEREDITY2"
    t.integer     "TBFPLANT"
    t.integer     "TBMPLANT"
    t.index ["TBCROSS"], name: "IDX_TBCROSS"
    t.index ["TBHEREDITY"], name: "IDX_TBHEREDITY"
    t.index ["TBID"], name: "IDX_INC_TBPEDIGREE_TBID"
    t.index ["TBNAME"], name: "IDX_TBNAME", unique: true
    t.index ["TBPARENT"], name: "IDX_TBPARENT"
  end

  create_table "TRE010", id: false, force: :cascade do |t|
    t.integer "TBMAIN", default: 0, null: false
    t.index ["TBMAIN"], name: "IDX_TBMAIN"
  end

  create_table "TRE02", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBKTRAIT", default: 0,     null: false
    t.boolean "TBVIEW",   default: true,  null: false
    t.boolean "TBLOCK",   default: false, null: false
    t.integer "TBVIEW2",  default: 7,     null: false
    t.index ["TBKTRAIT"], name: "IDX_TBKTRAIT", unique: true
  end

  create_table "TRE03", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBTREAT",              default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer "TBPARENT",             default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer "TBKTRAIT",             default: 0,                                                                                                                                                                                                                                                                null: false
    t.char    "TBDATA",   limit: 254, default: "                                                                                                                                                                                                                                                              ", null: false
    t.index ["TBTREAT", "TBKTRAIT"], name: "IDX_TBTREAT_TBKTRAIT", unique: true
  end

  create_table "TRE04", primary_key: "TBID", force: :cascade do |t|
    t.char    "TBNAME",    limit: 125, default: "                                                                                                                             "
    t.char    "TBDETAIL",  limit: 254, default: "                                                                                                                                                                                                                                                              ", null: false
    t.boolean "TBCHECK",               default: false,                                                                                                                                                                                                                                                            null: false
    t.integer "TBFOLDER1",             default: -1,                                                                                                                                                                                                                                                               null: false
    t.integer "TBSHOW",                default: 1,                                                                                                                                                                                                                                                                null: false
    t.index ["TBNAME"], name: "IDX_TBNAME", unique: true
  end

  create_table "TRE04A", primary_key: "TBID", force: :cascade do |t|
    t.char          "TBNAME",    limit: 125, default: "                                                                                                                             "
    t.char          "TBDETAIL",  limit: 254, default: "                                                                                                                                                                                                                                                              ", null: false
    t.boolean       "TBCHECK",               default: false,                                                                                                                                                                                                                                                            null: false
    t.integer       "TBTYPE",                default: 0,                                                                                                                                                                                                                                                                null: false
    t.char          "TBSEX",     limit: 1,   default: " ",                                                                                                                                                                                                                                                              null: false
    t.smalldatetime "TBDATEC",               default: '01-01-1900 00:00:00.0',                                                                                                                                                                                                                                          null: false
    t.integer       "TBUSERC",               default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBUSERM",               default: 0,                                                                                                                                                                                                                                                                null: false
    t.smalldatetime "TBDATEM",               default: -> { "getdate()" },                                                                                                                                                                                                                                               null: false
    t.integer       "TBFOLDER1",             default: -1,                                                                                                                                                                                                                                                               null: false
    t.integer       "TBSHOW",                default: 1,                                                                                                                                                                                                                                                                null: false
    t.index ["TBNAME"], name: "IDX_TBNAME", unique: true
  end

  create_table "TRE04B", primary_key: "TBID", force: :cascade do |t|
    t.char          "TBNAME",    limit: 125, default: "                                                                                                                             "
    t.char          "TBDETAIL",  limit: 254, default: "                                                                                                                                                                                                                                                              ", null: false
    t.boolean       "TBCHECK",               default: false,                                                                                                                                                                                                                                                            null: false
    t.smalldatetime "TBDATEC",               default: '01-01-1900 00:00:00.0',                                                                                                                                                                                                                                          null: false
    t.smalldatetime "TBDATEM",               default: -> { "getdate()" },                                                                                                                                                                                                                                               null: false
    t.integer       "TBUSERC",               default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBUSERM",               default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBFOLDER1",             default: -1,                                                                                                                                                                                                                                                               null: false
    t.integer       "TBSHOW",                default: 1,                                                                                                                                                                                                                                                                null: false
    t.index ["TBNAME"], name: "IDX_TBNAME", unique: true
  end

  create_table "TRE05", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBFOLDER", default: 0, null: false
    t.integer "TBITEM",   default: 0, null: false
    t.index ["TBFOLDER", "TBITEM"], name: "IDX_TBITEM_TBFOLDER", unique: true
  end

  create_table "TRE05A", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBFOLDER", default: 0, null: false
    t.integer "TBITEM",   default: 0, null: false
    t.index ["TBFOLDER", "TBITEM"], name: "IDX_TBFOLDER_TBITEM", unique: true
  end

  create_table "TRE05B", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBFOLDER", default: 0, null: false
    t.integer "TBITEM",   default: 0, null: false
    t.index ["TBFOLDER", "TBITEM"], name: "IDX_TBFOLDER_TBITEM", unique: true
  end

  create_table "TRI001", primary_key: "TBID", force: :cascade do |t|
    t.char          "TBNAME",   limit: 50,  default: "                                                  ",                                                                                                                                                                                                             null: false
    t.char          "TBDETAIL", limit: 254, default: "                                                                                                                                                                                                                                                              ", null: false
    t.integer       "TBMODEL",              default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBOPTION",             default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBUSERC",              default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer       "TBUSERM",              default: 0,                                                                                                                                                                                                                                                                null: false
    t.smalldatetime "TBDATEC",              default: '01-01-1900 00:00:00.0',                                                                                                                                                                                                                                          null: false
    t.smalldatetime "TBDATEM",              default: -> { "getdate()" },                                                                                                                                                                                                                                               null: false
    t.integer       "TBMVIEW",              default: 0,                                                                                                                                                                                                                                                                null: false
    t.index ["TBNAME"], name: "IDX_TBNAME", unique: true
  end

  create_table "TRL002", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBITEM",   default: 0,    null: false
    t.integer "TBFOLDER", default: 0,    null: false
    t.boolean "TBLOAD",   default: true, null: false
    t.index ["TBFOLDER", "TBITEM"], name: "IDX_TBFOLDER_TBITEM", unique: true
  end

  create_table "TRL003", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBFOLDER", default: 0,    null: false
    t.integer "TBITEM",   default: 0,    null: false
    t.boolean "TBLOAD",   default: true, null: false
    t.index ["TBFOLDER", "TBITEM"], name: "IDX_TBFOLDER_TBITEM", unique: true
  end

  create_table "TRL004", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBFOLDER1",             default: -1,                                                                                                                                                                                                                                                               null: false
    t.char    "TBNAME",    limit: 50,  default: "                                                  ",                                                                                                                                                                                                             null: false
    t.char    "TBDETAIL",  limit: 254, default: "                                                                                                                                                                                                                                                              ", null: false
    t.index ["TBNAME"], name: "IDX_TBNAME", unique: true
  end

  create_table "TRM01", id: false, force: :cascade do |t|
    t.integer  "TBKTRIAL",                          default: 0,                       null: false
    t.integer  "TBKTRAIT",                          default: 0,                       null: false
    t.integer  "TBENT1",                            default: 0,                       null: false
    t.integer  "TBFACT1",                           default: 0,                       null: false
    t.decimal  "TBAVG",    precision: 20, scale: 6, default: 0.0,                     null: false
    t.integer  "TBRANK",                            default: 0,                       null: false
    t.decimal  "TBCV",     precision: 20, scale: 6, default: 0.0,                     null: false
    t.decimal  "TBSERR",   precision: 20, scale: 6, default: 0.0,                     null: false
    t.decimal  "TBLSD",    precision: 20, scale: 6, default: 0.0,                     null: false
    t.decimal  "TBPCHK",   precision: 20, scale: 6, default: 0.0,                     null: false
    t.decimal  "TBPTMN",   precision: 20, scale: 6, default: 0.0,                     null: false
    t.decimal  "TBPC1",    precision: 20, scale: 6, default: 0.0,                     null: false
    t.decimal  "TBPC2",    precision: 20, scale: 6, default: 0.0,                     null: false
    t.decimal  "TBPC3",    precision: 20, scale: 6, default: 0.0,                     null: false
    t.decimal  "TBPC4",    precision: 20, scale: 6, default: 0.0,                     null: false
    t.decimal  "TBPC5",    precision: 20, scale: 6, default: 0.0,                     null: false
    t.decimal  "TBPC6",    precision: 20, scale: 6, default: 0.0,                     null: false
    t.decimal  "TBPC7",    precision: 20, scale: 6, default: 0.0,                     null: false
    t.decimal  "TBPC8",    precision: 20, scale: 6, default: 0.0,                     null: false
    t.decimal  "TBPC9",    precision: 20, scale: 6, default: 0.0,                     null: false
    t.decimal  "TBPC10",   precision: 20, scale: 6, default: 0.0,                     null: false
    t.integer  "TBENT2",                            default: 0,                       null: false
    t.integer  "TBENT3",                            default: 0,                       null: false
    t.integer  "TBENT4",                            default: 0,                       null: false
    t.integer  "TBFACT2",                           default: 0,                       null: false
    t.integer  "TBFACT3",                           default: 0,                       null: false
    t.integer  "TBFACT4",                           default: 0,                       null: false
    t.datetime "TBCDATE",                           default: '01-01-1900 00:00:00.0', null: false
    t.index ["TBKTRAIT", "TBENT1", "TBFACT1"], name: "IDX_TBKTRAIT_TBENT1_TBFACT1"
    t.index ["TBKTRAIT", "TBENT1"], name: "IDX_TBKTRAIT_TBENT1"
    t.index ["TBKTRAIT"], name: "IDX_TBKTRAIT"
    t.index ["TBKTRIAL"], name: "IDX_TBKTRIAL"
  end

  create_table "TRM02", id: false, force: :cascade do |t|
    t.integer  "TBKTRIAL",             default: 0,                                                                                                                               null: false
    t.integer  "TBKTRAIT",             default: 0,                                                                                                                               null: false
    t.char     "TBSTATS",  limit: 125, default: "                                                                                                                             "
    t.char     "TBAVG",    limit: 50,  default: "                                                  ",                                                                            null: false
    t.datetime "TBDATE",               default: '01-01-1900 00:00:00.0',                                                                                                         null: false
    t.index ["TBKTRAIT"], name: "IDX_TBKTRAIT"
    t.index ["TBKTRIAL"], name: "IDX_TBKTRIAL"
  end

  create_table "TRM03", id: false, force: :cascade do |t|
    t.integer  "TBKTRIAL",             default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer  "TBKTRAIT",             default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer  "TBFACT1",              default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer  "TBFACT2",              default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer  "TBFACT3",              default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer  "TBFACT4",              default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer  "TBENT1",               default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer  "TBENT2",               default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer  "TBENT3",               default: 0,                                                                                                                                                                                                                                                                null: false
    t.integer  "TBENT4",               default: 0,                                                                                                                                                                                                                                                                null: false
    t.char     "TBDATAC",  limit: 254, default: "                                                                                                                                                                                                                                                              ", null: false
    t.datetime "TBCDATE",              default: '01-01-1900 00:00:00.0',                                                                                                                                                                                                                                          null: false
    t.index ["TBKTRAIT"], name: "IDX_TBKTRAIT"
    t.index ["TBKTRIAL"], name: "IDX_TBKTRIAL"
  end

  create_table "TRM04", primary_key: "TBID", force: :cascade do |t|
    t.integer    "TBKTRIAL",                    default: 0,    null: false
    t.integer    "TBKTRAIT",                    default: 0,    null: false
    t.boolean    "TBVIEW",                      default: true, null: false
    t.integer    "TBVIEW2",                     default: 1,    null: false
    t.text_basic "TBNOTES",  limit: 2147483647, default: "",   null: false
    t.text_basic "TBANOVA",  limit: 2147483647, default: "",   null: false
    t.index ["TBKTRAIT"], name: "IDX_INC_TBKTRIAL_TBKTRAIT"
    t.index ["TBKTRIAL", "TBKTRAIT"], name: "IDX_TBKTRIAL_TBKTRAIT", unique: true
    t.index ["TBKTRIAL"], name: "IDX_INC_TBKTRAIT_TBKTRIAL"
  end

  create_table "USEC01", primary_key: "TBID", force: :cascade do |t|
    t.integer "TBITEMKEY",                null: false
    t.nchar   "TBITEM_SOURCE", limit: 10, null: false
    t.integer "TBUSER_NUM",               null: false
    t.integer "TBSEC_LEVEL",              null: false
  end

  create_table "VW001", id: false, force: :cascade do |t|
    t.decimal "TBVWTRBYGF",             precision: 10, scale: 0, default: 0.0,                                                                                                    null: false
    t.char    "TBSETTYPE",  limit: 20,                           default: "                    ",                                                                                 null: false
    t.char    "TBSETVALUE", limit: 100,                          default: "                                                                                                    ", null: false
    t.char    "TBDATATYPE", limit: 1,                            default: " ",                                                                                                    null: false
    t.index ["TBSETTYPE"], name: "IDX_TBSETTYPE"
  end

  add_foreign_key "AF0002", "TRD01", column: "TBKTRAIT", primary_key: "TBID", name: "FK_AF0002_TRD01", on_delete: :cascade
  add_foreign_key "AMMI001", "TRD01", column: "TBKTRAIT", primary_key: "TBID", name: "FK_AMMI001_TRD01", on_delete: :cascade
  add_foreign_key "CD002", "CD001", column: "TBSET", primary_key: "TBID", name: "FK_CD002_CD001", on_delete: :cascade
  add_foreign_key "CR004", "CR002", column: "TBCROSS", primary_key: "TBID", name: "FK_CR004_CR002", on_delete: :cascade
  add_foreign_key "CR004", "CR003", column: "TBSET", primary_key: "TBID", name: "FK_CR004_CR003", on_delete: :cascade
  add_foreign_key "CR006", "CR002", column: "TBCROSS", primary_key: "TBID", name: "FK_CR006_CR002", on_delete: :cascade
  add_foreign_key "CR006", "CR005", column: "TBPURPOSE", primary_key: "TBID", name: "FK_CR006_CR005", on_delete: :cascade
  add_foreign_key "CR011", "CR002", column: "TBKCROSS", primary_key: "TBID", name: "FK_CR011_CR002", on_delete: :cascade
  add_foreign_key "CR011", "CR012", column: "TBKTRAIT", primary_key: "TBKTRAIT", name: "FK_CR011_CR012", on_delete: :cascade
  add_foreign_key "CR012", "TRD01", column: "TBKTRAIT", primary_key: "TBID", name: "FK_CR012_TRD01", on_delete: :cascade
  add_foreign_key "CT0002", "CT0001", column: "TBKEY", primary_key: "TBID", name: "FK_CT0002_CT0001", on_delete: :cascade
  add_foreign_key "CT0002", "TRD01", column: "TBKTRAIT", primary_key: "TBID", name: "FK_CT0002_TRD01", on_delete: :cascade
  add_foreign_key "DE002", "DE001", column: "TBDESIGN", primary_key: "TBDESIGN", name: "FK_DE002_DE001", on_delete: :cascade
  add_foreign_key "DEN003", "DEN002", column: "TBLINK", primary_key: "TBID", name: "FK_DEN003_DEN002", on_delete: :cascade
  add_foreign_key "EXD01", "EXP01", column: "TBKEXPT", primary_key: "TBID", name: "FK_EXD01_EXP01", on_delete: :cascade
  add_foreign_key "EXD02", "EXP02", column: "TBKEXPT", primary_key: "TBKEXPT", name: "FK_EXD02_EXP02", on_delete: :cascade
  add_foreign_key "EXD02", "EXP02", column: "TBKTRAIT", primary_key: "TBKTRAIT", name: "FK_EXD02_EXP02", on_delete: :cascade
  add_foreign_key "EXD03", "EXD01", column: "TBEXPTPLOT", primary_key: "TBID", name: "FK_EXD03_EXD01", on_delete: :cascade
  add_foreign_key "EXD04", "EXD03", column: "TBSUBPLOT", primary_key: "TBID", name: "FK_EXD04_EXD03", on_delete: :cascade
  add_foreign_key "EXG02", "EXG01", column: "TBFOLDER", primary_key: "TBID", name: "FK_EXG02_EXG01", on_delete: :cascade
  add_foreign_key "EXG02", "EXP01", column: "TBITEM", primary_key: "TBID", name: "FK_EXG02_EXP01", on_delete: :cascade
  add_foreign_key "EXM04", "EXP01", column: "TBKEXPT", primary_key: "TBID", name: "FK_EXM04_EXP01", on_delete: :cascade
  add_foreign_key "EXM04", "TRD01", column: "TBKTRAIT", primary_key: "TBID", name: "FK_EXM04_TRD01", on_delete: :cascade
  add_foreign_key "EXP01", "DE001", column: "TBDESIGN", primary_key: "TBDESIGN", name: "FK_EXP01_DE001"
  add_foreign_key "EXP01", "LOC001", column: "TBKLOC", primary_key: "TBID", name: "FK_EXP01_LOC001"
  add_foreign_key "EXP02", "EXP01", column: "TBKEXPT", primary_key: "TBID", name: "FK_EXP02_EXP01", on_delete: :cascade
  add_foreign_key "EXP02", "TRD01", column: "TBKTRAIT", primary_key: "TBID", name: "FK_EXP02_TRD01", on_delete: :cascade
  add_foreign_key "EXP03", "EXP01", column: "TBKEXPT", primary_key: "TBID", name: "FK_EXP03_EXP01", on_delete: :cascade
  add_foreign_key "EXP03", "TRE02", column: "TBKTRAIT", primary_key: "TBKTRAIT", name: "FK_EXP03_TRE02", on_delete: :cascade
  add_foreign_key "EXP04", "EXP01", column: "TBKEXPT", primary_key: "TBID", name: "FK_EXP04_EXP01", on_delete: :cascade
  add_foreign_key "EXP04", "LOC005", column: "TBKTRAIT", primary_key: "TBKTRAIT", name: "FK_EXP04_LOC005", on_delete: :cascade
  add_foreign_key "EXP05", "EXP01", column: "TBKEXPT", primary_key: "TBID", name: "FK_EXP05_EXP01", on_delete: :cascade
  add_foreign_key "EXP06", "EXP01", column: "TBKEXPT", primary_key: "TBID", name: "FK_EXP06_EXP01", on_delete: :cascade
  add_foreign_key "EXP06", "TRE01", column: "TBKTREAT", primary_key: "TBID", name: "FK_EXP06_TRE01"
  add_foreign_key "EXT01", "TRD01", column: "TBKTRAIT", primary_key: "TBID", name: "FK_EXT01_TRD01", on_delete: :cascade
  add_foreign_key "EXT02", "EXP01", column: "TBKEXPT", primary_key: "TBID", name: "FK_EXT02_EXP01", on_delete: :cascade
  add_foreign_key "EXT02", "EXT01", column: "TBKTRAIT", primary_key: "TBKTRAIT", name: "FK_EXT02_EXT01", on_delete: :cascade
  add_foreign_key "FI001", "FI002", column: "TBLIST", primary_key: "TBID", name: "FK_FI001_FI002", on_delete: :cascade
  add_foreign_key "GXE001", "TRD01", column: "TBKTRAIT", primary_key: "TBID", name: "FK_GXE001_TRD01", on_delete: :cascade
  add_foreign_key "GXE001", "TRI001", column: "TBKTRIAL", primary_key: "TBID", name: "FK_GXE001_TRI001", on_delete: :cascade
  add_foreign_key "GXE002", "GXE001", column: "TBKTRAIT", primary_key: "TBKTRAIT", name: "FK_GXE002_GXE001", on_delete: :cascade
  add_foreign_key "GXE002", "GXE001", column: "TBKTRIAL", primary_key: "TBKTRIAL", name: "FK_GXE002_GXE001", on_delete: :cascade
  add_foreign_key "GXE003", "GXE001", column: "TBKTRAIT", primary_key: "TBKTRAIT", name: "FK_GXE003_GXE001", on_delete: :cascade
  add_foreign_key "GXE003", "GXE001", column: "TBKTRIAL", primary_key: "TBKTRIAL", name: "FK_GXE003_GXE001", on_delete: :cascade
  add_foreign_key "LOC003", "LOC001", column: "TBITEM", primary_key: "TBID", name: "FK_LOC003_LOC001", on_delete: :cascade
  add_foreign_key "LOC003", "LOC002", column: "TBFOLDER", primary_key: "TBID", name: "FK_LOC003_LOC002", on_delete: :cascade
  add_foreign_key "LOC004", "LOC001", column: "TBKLOC", primary_key: "TBID", name: "FK_LOC004_LOC001", on_delete: :cascade
  add_foreign_key "LOC004", "LOC005", column: "TBKTRAIT", primary_key: "TBKTRAIT", name: "FK_LOC004_LOC005", on_delete: :cascade
  add_foreign_key "LOC005", "TRD01", column: "TBKTRAIT", primary_key: "TBID", name: "FK_LOC005_TRD01", on_delete: :cascade
  add_foreign_key "NUD01", "NUR01", column: "TBKNUR", primary_key: "TBID", name: "FK_NUD01_NUR01", on_delete: :cascade
  add_foreign_key "NUD02", "NUR02", column: "TBKNUR", primary_key: "TBKNUR", name: "FK_NUD02_NUR02", on_delete: :cascade
  add_foreign_key "NUD02", "NUR02", column: "TBKTRAIT", primary_key: "TBKTRAIT", name: "FK_NUD02_NUR02", on_delete: :cascade
  add_foreign_key "NUD03", "NUD01", column: "TBNPLOT", primary_key: "TBID", name: "FK_NUD03_NUD01", on_delete: :cascade
  add_foreign_key "NUD04", "NUD03", column: "TBKSBPLOT", primary_key: "TBID", name: "FK_NUD04_NUD03", on_delete: :cascade
  add_foreign_key "NUD05", "NUR01", column: "TBEXPT", primary_key: "TBID", name: "FK_NUD05_NUR01", on_delete: :cascade
  add_foreign_key "NUG02", "NUG01", column: "TBFOLDER", primary_key: "TBID", name: "FK_NUG02_NUG01", on_delete: :cascade
  add_foreign_key "NUG02", "NUR01", column: "TBITEM", primary_key: "TBID", name: "FK_NUG02_NUR01", on_delete: :cascade
  add_foreign_key "NUM04", "NUR01", column: "TBKNUR", primary_key: "TBID", name: "FK_NUM04_NUR01", on_delete: :cascade
  add_foreign_key "NUM04", "TRD01", column: "TBKTRAIT", primary_key: "TBID", name: "FK_NUM04_TRD01", on_delete: :cascade
  add_foreign_key "NUR01", "DE001", column: "TBDESIGN", primary_key: "TBDESIGN", name: "FK_NUR01_DE001"
  add_foreign_key "NUR01", "LOC001", column: "TBKLOC", primary_key: "TBID", name: "FK_NUR01_LOC001"
  add_foreign_key "NUR02", "NUR01", column: "TBKNUR", primary_key: "TBID", name: "FK_NUR02_NUR011", on_delete: :cascade
  add_foreign_key "NUR02", "TRD01", column: "TBKTRAIT", primary_key: "TBID", name: "FK_NUR02_TRD01", on_delete: :cascade
  add_foreign_key "NUR03", "NUR01", column: "TBKNUR", primary_key: "TBID", name: "FK_NUR03_NUR01", on_delete: :cascade
  add_foreign_key "NUR03", "TRE02", column: "TBKTRAIT", primary_key: "TBKTRAIT", name: "FK_NUR03_TRE02", on_delete: :cascade
  add_foreign_key "NUR04", "LOC005", column: "TBKTRAIT", primary_key: "TBKTRAIT", name: "FK_NUR04_LOC005", on_delete: :cascade
  add_foreign_key "NUR04", "NUR01", column: "TBKNUR", primary_key: "TBID", name: "FK_NUR04_NUR01", on_delete: :cascade
  add_foreign_key "NUR05", "NUR01", column: "TBKNUR", primary_key: "TBID", name: "FK_NUR05_NUR01", on_delete: :cascade
  add_foreign_key "NUR06", "NUR01", column: "TBKNUR", primary_key: "TBID", name: "FK_NUR06_NUR01", on_delete: :cascade
  add_foreign_key "NUR06", "TRE01", column: "TBKTREAT", primary_key: "TBID", name: "FK_NUR06_TRE01"
  add_foreign_key "NUT01", "TRD01", column: "TBKTRAIT", primary_key: "TBID", name: "FK_NUT01_TRD01", on_delete: :cascade
  add_foreign_key "NUT02", "NUR01", column: "TBKNUR", primary_key: "TBID", name: "FK_NUT02_NUR01", on_delete: :cascade
  add_foreign_key "NUT02", "NUT01", column: "TBKTRAIT", primary_key: "TBKTRAIT", name: "FK_NUT02_NUT01", on_delete: :cascade
  add_foreign_key "PO001", "CR002", column: "TBFOLDER", primary_key: "TBID", name: "FK_PO001_CR002", on_delete: :cascade
  add_foreign_key "PO001", "TRE01", column: "TBITEM", primary_key: "TBID", name: "FK_PO001_TRE01", on_delete: :cascade
  add_foreign_key "SCA002", "SCA001", column: "TBSCALE", primary_key: "TBID", name: "FK_SCA002_SCA001", on_delete: :cascade
  add_foreign_key "SI001", "HA001", column: "TBHARVEST", primary_key: "TBID", name: "FK_SI001_HA001"
  add_foreign_key "SI001", "PLA001", column: "TBPLANTER", primary_key: "TBID", name: "FK_SI001_PLA001"
  add_foreign_key "SI003", "SI001", column: "TBSITE", primary_key: "TBID", name: "FK_SI003_SI001", on_delete: :cascade
  add_foreign_key "SI004", "SI001", column: "TBSITE", primary_key: "TBID", name: "FK_SI004_SI001", on_delete: :cascade
  add_foreign_key "SI005", "SI001", column: "TBSITE", primary_key: "TBID", name: "FK_SI005_SI001", on_delete: :cascade
  add_foreign_key "SI007", "SI001", column: "TBITEM", primary_key: "TBID", name: "FK_SI007_SI001", on_delete: :cascade
  add_foreign_key "SI007", "SI006", column: "TBFOLDER", primary_key: "TBID", name: "FK_SI007_SI006", on_delete: :cascade
  add_foreign_key "SIM001", "SIM006", column: "TBTOTALUNIT", primary_key: "TBID", name: "FK_SIM001_SIM006"
  add_foreign_key "SIM001", "TRE01", column: "TBMEMBER", primary_key: "TBID", name: "FK_SIM001_TRE01", on_delete: :cascade
  add_foreign_key "SIM003A", "SIM003", column: "TBKLOC", primary_key: "TBID", name: "FK_SIM003A_SIM003"
  add_foreign_key "SIM004E", "EXP01", column: "TBKEXPT", primary_key: "TBID", name: "FK_SIM004E_EXP01", on_delete: :cascade
  add_foreign_key "SIM004E", "SIM005", column: "TBKTRAN", primary_key: "TBID", name: "FK_SIM004E_SIM005", on_delete: :cascade
  add_foreign_key "SIM004M", "SIM005", column: "TBKTRAND", primary_key: "TBID", name: "FK_SIM004M_SIM005", on_delete: :cascade
  add_foreign_key "SIM004N", "NUR01", column: "TBKNUR", primary_key: "TBID", name: "FK_SIM004N_NUR01", on_delete: :cascade
  add_foreign_key "SIM004N", "SIM005", column: "TBKTRAN", primary_key: "TBID", name: "FK_SIM004N_SIM005", on_delete: :cascade
  add_foreign_key "SIM004S", "SIM005", column: "TBKTRAND", primary_key: "TBID", name: "FK_SIM004S_SIM005", on_delete: :cascade
  add_foreign_key "SIM005", "SIM001", column: "TBKLOT", primary_key: "TBID", name: "FK_SIM005_SIM001", on_delete: :cascade
  add_foreign_key "SIM005", "SIM006", column: "TBUNITSKEY", primary_key: "TBID", name: "FK_SIM005_SIM006"
  add_foreign_key "SIM006A", "SIM006", column: "TBUNIT", primary_key: "TBID", name: "FK_SIM006A_SIM006", on_delete: :cascade
  add_foreign_key "SIM009A", "SIM001", column: "TBITEM", primary_key: "TBID", name: "FK_SIM009A_SIM001", on_delete: :cascade
  add_foreign_key "SIM009A", "SIM009", column: "TBFOLDER", primary_key: "TBID", name: "FK_SIM009A_SIM009", on_delete: :cascade
  add_foreign_key "SIM011", "TRD01", column: "TBKTRAIT", primary_key: "TBID", name: "FK_SIM011_TRD01", on_delete: :cascade
  add_foreign_key "SIM012", "SIM001", column: "TBKLOT", primary_key: "TBID", name: "FK_SIM012_SIM001", on_delete: :cascade
  add_foreign_key "SIM012", "SIM011", column: "TBKTRAIT", primary_key: "TBKTRAIT", name: "FK_SIM012_SIM011", on_delete: :cascade
  add_foreign_key "SIM013E", "EXP01", column: "TBKEXPT", primary_key: "TBID", name: "FK_SIM013E_EXP01", on_delete: :cascade
  add_foreign_key "SIM013E", "SIM005", column: "TBKTRAN", primary_key: "TBID", name: "FK_SIM013E_SIM005", on_delete: :cascade
  add_foreign_key "SIM013N", "NUR01", column: "TBKNUR", primary_key: "TBID", name: "FK_SIM013N_NUR01", on_delete: :cascade
  add_foreign_key "SIM013N", "SIM005", column: "TBKTRAN", primary_key: "TBID", name: "FK_SIM013N_SIM005", on_delete: :cascade
  add_foreign_key "SM001", "SM002", column: "TBSET", primary_key: "TBID", name: "FK_SM001_SM002", on_delete: :cascade
  add_foreign_key "SM001", "TRD01", column: "TBTRAIT", primary_key: "TBID", name: "FK_SM001_TRD01", on_delete: :cascade
  add_foreign_key "TRD03", "TRD01", column: "TBITEM", primary_key: "TBID", name: "FK_TRD03_TRD01", on_delete: :cascade
  add_foreign_key "TRD03", "TRD02", column: "TBFOLDER", primary_key: "TBID", name: "FK_TRD03_TRD02", on_delete: :cascade
  add_foreign_key "TRE008", "TRE009", column: "TBGROUP", primary_key: "TBID", name: "FK_TRE008_TRE009", on_delete: :cascade
  add_foreign_key "TRE02", "TRD01", column: "TBKTRAIT", primary_key: "TBID", name: "FK_TRE02_TRD01", on_delete: :cascade
  add_foreign_key "TRE03", "TRE01", column: "TBTREAT", primary_key: "TBID", name: "FK_TRE03_TRE01", on_delete: :cascade
  add_foreign_key "TRE03", "TRE02", column: "TBKTRAIT", primary_key: "TBKTRAIT", name: "FK_TRE03_TRE02", on_delete: :cascade
  add_foreign_key "TRE05", "TRE01", column: "TBITEM", primary_key: "TBID", name: "FK_TRE05_TRE01", on_delete: :cascade
  add_foreign_key "TRE05", "TRE04", column: "TBFOLDER", primary_key: "TBID", name: "FK_TRE05_TRE04", on_delete: :cascade
  add_foreign_key "TRE05A", "TRE01", column: "TBITEM", primary_key: "TBID", name: "FK_TRE05A_TRE01", on_delete: :cascade
  add_foreign_key "TRE05A", "TRE04A", column: "TBFOLDER", primary_key: "TBID", name: "FK_TRE05A_TRE04A", on_delete: :cascade
  add_foreign_key "TRE05B", "TRE01", column: "TBITEM", primary_key: "TBID", name: "FK_TRE05B_TRE01", on_delete: :cascade
  add_foreign_key "TRE05B", "TRE04B", column: "TBFOLDER", primary_key: "TBID", name: "FK_TRE05B_TRE04B", on_delete: :cascade
  add_foreign_key "TRL002", "EXP01", column: "TBITEM", primary_key: "TBID", name: "FK_TRL002_EXP01", on_delete: :cascade
  add_foreign_key "TRL002", "TRI001", column: "TBFOLDER", primary_key: "TBID", name: "FK_TRL002_TRI001", on_delete: :cascade
  add_foreign_key "TRL003", "TRI001", column: "TBITEM", primary_key: "TBID", name: "FK_TRL003_TRI001", on_delete: :cascade
  add_foreign_key "TRL003", "TRL004", column: "TBFOLDER", primary_key: "TBID", name: "FK_TRL003_TRL004", on_delete: :cascade
  add_foreign_key "TRM04", "TRD01", column: "TBKTRAIT", primary_key: "TBID", name: "FK_TRM04_TRD01", on_delete: :cascade
  add_foreign_key "TRM04", "TRI001", column: "TBKTRIAL", primary_key: "TBID", name: "FK_TRM04_TRI001", on_delete: :cascade
end
