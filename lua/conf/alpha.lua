local M = {}

function M.config0()
    local alpha = require('alpha')
    local dashboard = require('alpha.themes.dashboard')
    -- dashboard.section.header.val = {
    --     [[                               __                ]],
    --     [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
    --     [[ / _ `\  / __`\ / __`\/\ \/\ \\/\ \  / __` __`\  ]],
    --     [[/\ \/\ \/\  __//\ \_\ \ \ \_/ |\ \ \/\ \/\ \/\ \ ]],
    --     [[\ \_\ \_\ \____\ \____/\ \___/  \ \_\ \_\ \_\ \_\]],
    --     [[ \/_/\/_/\/____/\/___/  \/__/    \/_/\/_/\/_/\/_/]],
    -- }
    dashboard.section.header.val = {
        "███╗   ██╗███████╗ ██████╗ ██╗   ██╗██╗███╗   ███╗",
        "████╗  ██║██╔════╝██╔═══██╗██║   ██║██║████╗ ████║",
        "██╔██╗ ██║█████╗  ██║   ██║██║   ██║██║██╔████╔██║",
        "██║╚██╗██║██╔══╝  ██║   ██║╚██╗ ██╔╝██║██║╚██╔╝██║",
        "██║ ╚████║███████╗╚██████╔╝ ╚████╔╝ ██║██║ ╚═╝ ██║",
        "╚═╝  ╚═══╝╚══════╝ ╚═════╝   ╚═══╝  ╚═╝╚═╝     ╚═╝",
    }
    dashboard.section.buttons.val = {
        dashboard.button( "e", "  New file" , ":ene <BAR> startinsert <CR>"),
        dashboard.button( "q", "  Quit NVIM" , ":qa<CR>"),
    }
    local handle = io.popen('fortune')
    local fortune = handle:read("*a")
    handle:close()
    dashboard.section.footer.val = fortune

    dashboard.config.opts.noautocmd = true

    vim.cmd[[autocmd User AlphaReady echo 'ready']]

    alpha.setup(dashboard.config)
end


function M.config()
    local alpha = require("alpha")
	local dashboard = require("alpha.themes.dashboard")

	-- dashboard.section.header.val = {
	-- 	[[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
	-- 	[[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⣠⣶⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
	-- 	[[⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣡⣾⣿⣿⣿⣿⣿⢿⣿⣿⣿⣿⣿⣿⣟⠻⣿⣿⣿⣿⣿⣿⣿⣿]],
	-- 	[[⣿⣿⣿⣿⣿⣿⣿⣿⡿⢫⣷⣿⣿⣿⣿⣿⣿⣿⣾⣯⣿⡿⢧⡚⢷⣌⣽⣿⣿⣿⣿⣿⣶⡌⣿⣿⣿⣿⣿⣿]],
	-- 	[[⣿⣿⣿⣿⣿⣿⣿⣿⠇⢸⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣮⣇⣘⠿⢹⣿⣿⣿⣿⣿⣻⢿⣿⣿⣿⣿⣿]],
	-- 	[[⣿⣿⣿⣿⣿⣿⣿⣿⠀⢸⣿⣿⡇⣿⣿⣿⣿⣿⣿⣿⣿⡟⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣻⣿⣿⣿⣿]],
	-- 	[[⣿⣿⣿⣿⣿⣿⣿⡇⠀⣬⠏⣿⡇⢻⣿⣿⣿⣿⣿⣿⣿⣷⣼⣿⣿⣸⣿⣿⣿⣿⣿⣿⣿⣿⣿⢻⣿⣿⣿⣿]],
	-- 	[[⣿⣿⣿⣿⣿⣿⣿⠀⠈⠁⠀⣿⡇⠘⡟⣿⣿⣿⣿⣿⣿⣿⣿⡏⠿⣿⣟⣿⣿⣿⣿⣿⣿⣿⣿⣇⣿⣿⣿⣿]],
	-- 	[[⣿⣿⣿⣿⣿⣿⡏⠀⠀⠐⠀⢻⣇⠀⠀⠹⣿⣿⣿⣿⣿⣿⣩⡶⠼⠟⠻⠞⣿⡈⠻⣟⢻⣿⣿⣿⣿⣿⣿⣿]],
	-- 	[[⣿⣿⣿⣿⣿⣿⡇⠀⠀⠀⠀⠀⢿⠀⡆⠀⠘⢿⢻⡿⣿⣧⣷⢣⣶⡃⢀⣾⡆⡋⣧⠙⢿⣿⣿⣟⣿⣿⣿⣿]],
	-- 	[[⣿⣿⣿⣿⣿⣿⡿⠀⠀⠀⠀⠀⠀⠀⡥⠂⡐⠀⠁⠑⣾⣿⣿⣾⣿⣿⣿⡿⣷⣷⣿⣧⣾⣿⣿⣿⣿⣿⣿⣿]],
	-- 	[[⣿⣿⡿⣿⣍⡴⠆⠀⠀⠀⠀⠀⠀⠀⠀⣼⣄⣀⣷⡄⣙⢿⣿⣿⣿⣿⣯⣶⣿⣿⢟⣾⣿⣿⢡⣿⣿⣿⣿⣿]],
	-- 	[[⣿⡏⣾⣿⣿⣿⣷⣦⠀⠀⠀⢀⡀⠀⠀⠠⣭⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠟⣡⣾⣿⣿⢏⣾⣿⣿⣿⣿⣿]],
	-- 	[[⣿⣿⣿⣿⣿⣿⣿⣿⡴⠀⠀⠀⠀⠀⠠⠀⠰⣿⣿⣿⣷⣿⠿⠿⣿⣿⣭⡶⣫⠔⢻⢿⢇⣾⣿⣿⣿⣿⣿⣿]],
	-- 	[[⣿⣿⣿⡿⢫⣽⠟⣋⠀⠀⠀⠀⣶⣦⠀⠀⠀⠈⠻⣿⣿⣿⣾⣿⣿⣿⣿⡿⣣⣿⣿⢸⣾⣿⣿⣿⣿⣿⣿⣿]],
	-- 	[[⡿⠛⣹⣶⣶⣶⣾⣿⣷⣦⣤⣤⣀⣀⠀⠀⠀⠀⠀⠀⠉⠛⠻⢿⣿⡿⠫⠾⠿⠋⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
	-- 	[[⢀⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣀⡆⣠⢀⣴⣏⡀⠀⠀⠀⠉⠀⠀⢀⣠⣰⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
	-- 	[[⠿⠛⠛⠛⠛⠛⠛⠻⢿⣿⣿⣿⣿⣯⣟⠷⢷⣿⡿⠋⠀⠀⠀⠀⣵⡀⢠⡿⠋⢻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿]],
	-- 	[[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠉⠛⢿⣿⣿⠂⠀⠀⠀⠀⠀⢀⣽⣿⣿⣿⣿⣿⣿⣿⣍⠛⠿⣿⣿⣿⣿⣿⣿]],
	-- }

    dashboard.section.header.val = {
[[⠄⠄⠄⠄⢠⣿⣿⣿⣿⣿⢻⣿⣿⣿⣿⣿⣿⣿⣿⣯⢻⣿⣿⣿⣿⣆⠄⠄⠄]],
[[⠄⠄⣼⢀⣿⣿⣿⣿⣏⡏⠄⠹⣿⣿⣿⣿⣿⣿⣿⣿⣧⢻⣿⣿⣿⣿⡆⠄⠄]],
[[⠄⠄⡟⣼⣿⣿⣿⣿⣿⠄⠄⠄⠈⠻⣿⣿⣿⣿⣿⣿⣿⣇⢻⣿⣿⣿⣿⠄⠄]],
[[⠄⢰⠃⣿⣿⠿⣿⣿⣿⠄⠄⠄⠄⠄⠄⠙⠿⣿⣿⣿⣿⣿⠄⢿⣿⣿⣿⡄⠄]],
[[⠄⢸⢠⣿⣿⣧⡙⣿⣿⡆⠄⠄⠄⠄⠄⠄⠄⠈⠛⢿⣿⣿⡇⠸⣿⡿⣸⡇⠄]],
[[⠄⠈⡆⣿⣿⣿⣿⣦⡙⠳⠄⠄⠄⠄⠄⠄⢀⣠⣤⣀⣈⠙⠃⠄⠿⢇⣿⡇⠄]],
[[⠄⠄⡇⢿⣿⣿⣿⣿⡇⠄⠄⠄⠄⠄⣠⣶⣿⣿⣿⣿⣿⣿⣷⣆⡀⣼⣿⡇⠄]],
[[⠄⠄⢹⡘⣿⣿⣿⢿⣷⡀⠄⢀⣴⣾⣟⠉⠉⠉⠉⣽⣿⣿⣿⣿⠇⢹⣿⠃⠄]],
[[⠄⠄⠄⢷⡘⢿⣿⣎⢻⣷⠰⣿⣿⣿⣿⣦⣀⣀⣴⣿⣿⣿⠟⢫⡾⢸⡟⠄.]],
[[⠄⠄⠄⠄⠻⣦⡙⠿⣧⠙⢷⠙⠻⠿⢿⡿⠿⠿⠛⠋⠉⠄⠂⠘⠁⠞⠄⠄⠄]],
[[⠄⠄⠄⠄⠄⠈⠙⠑⣠⣤⣴⡖⠄⠿⣋⣉⣉⡁⠄⢾⣦⠄⠄⠄⠄⠄⠄⠄⠄]],
}

-- 	dashboard.section.header.val = {
-- [[             '>?-?_i;^.                                                             <xJz[.  ]],
-- [[             ."mBBBBB8WoqCj}i`                                                      ]O8@BBB}]],
-- [[             .'c$B88888%B@@B8a0j_^                                                ~0BB8&88Bj]],
-- [[                )M$8888888&8&ccpMoC);                                           "vB@8&8888@m]],
-- [[                 ICBB8&888&%hiIl+/CoMm/I                                       +h@woB8888&@O]],
-- [[                   ?q@B8888%bi!!!lI>1YoM01`                                   /%8fl+J%8888@|]],
-- [[`I^.                .}dBB8&%#_l!!!!!ll>)QWor;                               .v$o}I!lIz%8&BWI]],
-- [[w&obZYx1<,.           ']Q%@8%xI!!!!!!!!lI+naWU>                            ^C$b_I!!!l!wB8$c ]],
-- [[W#(\nJwh#okZX|_:.        -Q8$#]Il!!!!!!!!lI!\d&U>                         .Y$d+l!!!!!I\%B*; ]],
-- [[*W-IlIl!~[\vQb*#kZn[>,     !/b&O|iIl!!!!!!!!ll(b8Y; `^^^^^^^.           . j$a_li!!!!!I)%$\ .]],
-- [[o8}l!!!!!llll!<]/zZhM#pX)~"   ?Y*aC)>IIl!!!!!!l!jW*mdbdppdkhpqOUx|]l'    ?B8{I!!!!!!l~k$Y.. ]],
-- [[k8{l!!!!!!!!!!!llIli_)u0hM#qz1l.^]Jha0f_!l!>!!!!~{1[?_++++-?{(jcLpo*kQj+"w$cI!!!!!!l!O$m` . ]],
-- [[Y%)l!!!!!!!!!!!!!!!!!lll!+(vZoMa0j-i?rm&hY|[!!!!!llll!!!!!!lllllIli_(vZa*$a>!!!!!!l!J$bI .  ]],
-- [[|&)l!!!!!!!!!!!!!!!!!!!!!lllli?/Yd#MpXbMX[il!!!!!!!!!!!!!!!!!!!!!!!!lIl<)YX<!!!!!liL$m: .   ]],
-- [[,X(l!!!!!!!!!!!!!!!!!!!!!!!!!!llIl<[X8J+Il!!!lIi<>!l!!!!!!!!!!!!!!!!!!!!lI<<!!l!I+w$L,      ]],
-- [[ f(l!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!I[O(Il!!!l~jQX]<]1!!!!!!!!!!!!!!!!!!!!!!!!!!}+|*W\.       ]],
-- [[.0)I!!!!!!!!!!!!!!!!!!!!!!!!!!!!!l[b1I!!!!l+bB@n"`_#zli!!!!!!!!!!!!!!!!!!!!!!l_C@#! .       ]],
-- [[,b{I!!!!!!!!!!!!!!!!!!!!!!!!!!!!!iqj;llllll]MB%8*a&$Cl!!!!!!!!!!!!!!!!ll!!!l!!l<q@u.        ]],
-- [[⣿⣿⣿⣿⣿⣿!!!!!!!!!!!!!!!!!!!!!!!!!!l1k>!+1(1-!l!0aM&Mbu<!!!!!!!!!!!!!!!!!!j1!!!!!!!!!.         ]],
-- [[ i)t/({[?+~<>!!!!!!!!!!!!!!!!!!!lfq!}mkkkpJ)!l>_-+!lll!!!!!!!!!!!!!!<0@U^'!hX!!!lJJ,        ]],
-- [[. ^!+__]\j(?}}}?~>!!ll!!!!!!!llll(d>vhkkkkhbfi!l!!!!?~llIIIl?i!!!!!l1BB&kdo@b>!!Ix|         ]],
-- [[         ''.^I?/rjt)]_>!lI!>?)(}!>q}}qkkkbkhO~!!!!!l_fOQUXvf{<llll!!ifqoWMaC]Illlz{         ]],
-- [[                '"I!>fpOzxf({1/\f{Ym~[Xqkkkqt!!!!!!!!ltpo#MWMkC\}?!!!l!~_+!;i_?<}m<         ]],
-- [[                     '+xp1!!I_Y!i+?/jf\(((1_!!!!!!!!!!l!]\tjx/}+_~!!!!!!ll[v0qdqd/'         ]],
-- [[                    .  "}I!!l}vl!!lll>]|j\_ll!!!!!!!!!!!lIIlIIl!!!!!!!!l-Xdkkboa1..         ]],
-- [[                       I|!!i_X[l!!!!!!ll!-/j}!!!!!!!!!!!!!!!!!!!!!!!!!!-Ohbbo&b-            ]],
-- [[                        _(!>]-!!!!!!!!!!!ll<)f_!!!!!!!!!!!!!!!!!!!!!lll?OaM&bx;  .          ]],
-- [[                      '+nOn<Il!!!!!!!!!!!!!!l><!!!!!!!!iiii!!!!!!!!>[(/LM$Z?`  ...          ]],
-- [[                      '{unZZ/<l!!!!!!!!!!!!!!!!!!!!!!!i<<~>!!!!!!!!>+~_+twCl                ]],
-- [[                        .;_jC0n]>ll!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!l)|;l{X[               ]],
--     }

	local function button(sc, txt, leader_txt, keybind, keybind_opts)
		local sc_after = sc:gsub("%s", ""):gsub(leader_txt, "<leader>")

		local opts = {
			position = "center",
			shortcut = sc,
			cursor = 5,
			width = 50,
			align_shortcut = "right",
			hl_shortcut = "Keyword",
		}

		if nil == keybind then
			keybind = sc_after
		end
		keybind_opts = vim.F.if_nil(keybind_opts, { noremap = true, silent = true, nowait = true })
		opts.keymap = { "n", sc_after, keybind, keybind_opts }

		local function on_press()
			-- local key = vim.api.nvim_replace_termcodes(keybind .. '<Ignore>', true, false, true)
			local key = vim.api.nvim_replace_termcodes(sc_after .. "<Ignore>", true, false, true)
			vim.api.nvim_feedkeys(key, "t", false)
		end

		return {
			type = "button",
			val = txt,
			on_press = on_press,
			opts = opts,
		}
	end
	local leader = "comma"
	dashboard.section.buttons.val = {
		button("comma s c", " Scheme change", leader, "<cmd>Telescope colorscheme<cr>"),
		button("comma f r", " File frecency", leader, "<cmd>Telescope frecency<cr>"),
		button("comma f e", " File history", leader, "<cmd>Telescope oldfiles<cr>"),
		button("comma f p", " Project find", leader, "<cmd>Telescope project<cr>"),
		button("comma f f", " File find", leader, "<cmd>Telescope find_files<cr>"),
		button("comma f n", " File new", leader, "<cmd>enew<cr>"),
		button("comma f w", " Word find", leader, "<cmd>Telescope live_grep<cr>"),
	}
	dashboard.section.buttons.opts.hl = "String"

	local function footer()
		local total_plugins = #vim.tbl_keys(packer_plugins)
		return "   Have Fun with neovim"
			.. "   v"
			.. vim.version().major
			.. "."
			.. vim.version().minor
			.. "."
			.. vim.version().patch
			.. "   "
			.. total_plugins
			.. " plugins"
	end
	-- dashboard.section.footer.val = footer()
	dashboard.section.footer.opts.hl = "Function"

	local head_butt_padding = 2
	local occu_height = #dashboard.section.header.val + 2 * #dashboard.section.buttons.val + head_butt_padding
	local header_padding = math.max(0, math.ceil((vim.fn.winheight("$") - occu_height) * 0.25))
	local foot_butt_padding = 1

	dashboard.config.layout = {
		{ type = "padding", val = header_padding },
		dashboard.section.header,
		{ type = "padding", val = head_butt_padding },
		dashboard.section.buttons,
		{ type = "padding", val = foot_butt_padding },
		dashboard.section.footer,
	}

	alpha.setup(dashboard.opts)

end

return M
