return {
  "goolord/alpha-nvim",
  dependencies = {
    "nvim-tree/nvim-web-devicons",
  },

  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.startify")

    dashboard.section.header.val = {
            [[                                                                                           ]],
            [[                                              ___                                    _.oo. ]],
            [[                                           ,o88888           _.u[[/;:,.         .odMMMMMM' ]],
            [[                                        ,o8888888'        .o888UU[[[/;:-.  .o@P^    MMM^   ]],
            [[                  ,:o:o:oooo.        ,8O88Pd8888"        oN88888UU[[[/;::-.        dP^     ]],
            [[              ,.::.::o:ooooOoOoO. ,oO8O8Pd888'"         dNMMNN888UU[[[/;:--.   .o@P^       ]],
            [[            ,.:.::o:ooOoOoOO8O8OOo.8OOPd8O8O"          ,MMMMMMN888UU[[/;::-. o@^           ]],
            [[           , ..:.::o:ooOoOOOO8OOOOo.FdO8O8"            NNMMMNN888UU[[[/~.o@P^              ]],
            [[          , ..:.::o:ooOoOO8O888O8O,COCOO"              888888888UU[[[/o@^-..               ]],
            [[         , . ..:.::o:ooOoOOOO8OOOOCOCO"               oI8888UU[[[/o@P^:--..                ]],
            [[          . ..:.::o:ooOoOoOO8O8OCCCC"o             .@^  YUU[[[/o@^;::---..                 ]],
            [[             . ..:.::o:ooooOoCoCCC"o:o           oMP     ^/o@P^;:::---..                   ]],
            [[             . ..:.::o:o:,cooooCo"oo:o:       .dMMM    .o@^ ^;::---...                     ]],
            [[          `   . . ..:.:cocoooo"'o:o:::'      dMMMMMMM@^`       `^^^^                       ]],
            [[          .`   . ..::ccccoc"'o:o:o:::'      YMMMUP^                                        ]],
            [[         :.:.    ,c:cccc"':.:.:.:.:.'        ^^                                            ]],
            [[       ..:.:"'`::::c:"'..:.:.:.:.:.'                                                       ]],
            [[     ...:.'.:.::::"'    . . . . .'           ┳┓  ┏┓   ┓  ┓ ┓ ┏┓                            ]],
            [[    .. . ....:."' `   .  . . ''              ┃┃━━┃┃┏┓┏┫  ┃ ┃ ┃                             ]],
            [[  . . . ...."'                               ┻┛  ┣┛┗┻┗┻  ┗┛┗┛┗┛                            ]],
            [[  .. . ."'                                                                                 ]],
            [[ .                                                                                         ]],
            [[                                                                                           ]],
    }

    alpha.setup(dashboard.opts)
  end,
}
