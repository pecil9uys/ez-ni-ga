
	local function local_os()
		function GUI()
			local local_os = game:GetService('Players')
			local local__G = game:GetService('TweenService')
			local local_hookfunction = local_os['LocalPlayer']
			local local_import = 653749 - 653748
			local local_read = -624499 + 624511
			local local_j = -530312 - (-531312)
			local local_double = {
				Vector3['new'](199.82, -2.59, 5.52);
				Vector3['new'](283.18, -2.59, .92),
				Vector3['new'](398.06, -2.59, 5.53),
				Vector3['new'](543.88, -2.59, 2.47),
				Vector3['new'](756.93, -2.59, 5.91),
				Vector3['new'](1074.11, -2.59, 1.92),
				Vector3['new'](1547.94, -2.59, 3.42),
				Vector3['new'](2249.15, -2.59, 2.36);
				Vector3['new'](2956.73, -2.59, -456821 - (-456814));
				Vector3['new'](3319.73, -2.59, -132196 + 132192),
				Vector3['new'](3673.73, -2.59, -939843 - (-939837)),
				Vector3['new'](4004.73, -2.59, -451374 + 451373)
			}
			local function local_length()
				local local_os = local_hookfunction['Character'] or local_hookfunction['CharacterAdded']:Wait()
				return local_os:WaitForChild('HumanoidRootPart')
			end
			local function local_bytecode()
				local local_os = local_length()
				local local__G
				local local_hookfunction = math['huge']
				for local_import = local_import, local_read, -391916 + 391917 do
					local local_read = local_double[local_import]
					if local_read then
						local local_j = (local_os['Position'] - local_read)['Magnitude']
						if local_j < local_hookfunction then
							local_hookfunction = local_j
							local__G = local_import
						end
					end
				end
				return local__G or local_import
			end
			local function local_wrap(local_os)
				local local_hookfunction = local_length()
				local local_import = (local_hookfunction['Position'] - local_os)['Magnitude']
				local local_read = math['clamp'](local_import / local_j, .1, -907196 + 907197)
				local local_double = local__G:Create(local_hookfunction, TweenInfo['new'](local_read, Enum['EasingStyle']['Linear']), {
					['CFrame'] = CFrame['new'](local_os)
				})
				local_double:Play()
			end
			local function local_long(local_os)
				local local__G = local_double[local_os]
				if local__G then
					local_wrap(local__G)
				end
			end
			local local_size = game:GetService('Players')
			local local_number = local_size['LocalPlayer']
			local local_seek = Instance['new']('ScreenGui')
			local_seek['Name'] = 'SmartGapUI'
			local_seek['ResetOnSpawn'] = false
			local_seek['Parent'] = local_number:WaitForChild('PlayerGui')
			local local_math = game:GetService('UserInputService')
			local local_setvbuf = Instance['new']('Frame', local_seek)
			local_setvbuf['Position'] = UDim2['fromScale'](.03, .4)
			local_setvbuf['BackgroundColor3'] = Color3['fromRGB'](334524 - 334506, -790246 - (-790264), 941391 - 941373)
			local_setvbuf['BorderSizePixel'] = -840250 - (-840250)
			local_setvbuf['Active'] = true
			local_setvbuf['Draggable'] = true
			if local_math['TouchEnabled'] then
				local_setvbuf['Size'] = UDim2['fromScale'](.4, .34)
			else
				local_setvbuf['Size'] = UDim2['fromScale'](.2, .18)
			end;
			(Instance['new']('UICorner', local_setvbuf))['CornerRadius'] = UDim['new'](-578290 + 578290, 451132 - 451118)
			local local_tostring = Instance['new']('UIPadding', local_setvbuf)
			local_tostring['PaddingTop'] = UDim['new'](598771 - 598771, -551025 + 551033)
			local_tostring['PaddingBottom'] = UDim['new'](419885 - 419885, -428653 + 428663)
			local_tostring['PaddingLeft'] = UDim['new'](658484 + -658484, 395256 - 395244)
			local_tostring['PaddingRight'] = UDim['new'](-769848 + 769848, -764728 + 764740)
			local local_tonumber = Instance['new']('UIStroke', local_setvbuf)
			local_tonumber['Thickness'] = -917308 + 917310
			local_tonumber['ApplyStrokeMode'] = Enum['ApplyStrokeMode']['Border']
			task['spawn'](function()
				local local_os = -664501 - (-664501)
				while task['wait']() do
					local_os = local_os + .002
					if local_os > -109347 + 109348 then
						local_os = 548657 - 548657
					end
					local_tonumber['Color'] = Color3['fromHSV'](local_os, 82276 - 82275, -742519 + 742520)
				end
			end)
			local local_print = Instance['new']('TextLabel', local_setvbuf)
			local_print['Size'] = UDim2['fromScale'](335978 + -335977, .22)
			local_print['Position'] = UDim2['fromScale'](286761 - 286761, .02)
			local_print['BackgroundTransparency'] = -284968 - (-284969)
			local_print['Text'] = 'Rez Hub'
			local_print['Font'] = Enum['Font']['GothamBlack']
			local_print['TextScaled'] = false
			local_print['TextSize'] = 984575 + -984549
			local_print['TextColor3'] = Color3['new'](-467182 + 467183, -846073 - (-846074), -952510 + 952511)
			local local_i = Instance['new']('TextLabel', local_setvbuf)
			local_i['Size'] = UDim2['fromScale'](860732 - 860731, .22)
			local_i['Position'] = UDim2['fromScale'](-396140 - (-396140), .3)
			local_i['BackgroundTransparency'] = 783608 + -783607
			local_i['Text'] = 'Đang ở: Gap ?'
			local_i['Font'] = Enum['Font']['GothamBold']
			local_i['TextScaled'] = false
			local_i['TextSize'] = -80014 - (-80034)
			local_i['TextColor3'] = Color3['fromRGB'](-333738 + 333958, 565710 - 565490, -120072 - (-120292))
			local local_string = Instance['new']('Frame', local_setvbuf)
			local_string['Position'] = UDim2['fromScale'](.02, .62)
			local_string['Size'] = UDim2['fromScale'](.96, .26)
			local_string['BackgroundTransparency'] = 174437 + -174436
			local local_isWindows = Instance['new']('UIListLayout', local_string)
			local_isWindows['FillDirection'] = Enum['FillDirection']['Horizontal']
			local_isWindows['HorizontalAlignment'] = Enum['HorizontalAlignment']['Center']
			local_isWindows['Padding'] = UDim['new'](.06, 607603 + -607603)
			local function local_coroutine(local_os)
				local local__G = Instance['new']('TextButton')
				local__G['Size'] = UDim2['fromScale'](.45, -333162 + 333163)
				local__G['Text'] = local_os
				local__G['Font'] = Enum['Font']['GothamBold']
				local__G['TextScaled'] = false
				local__G['TextSize'] = 941521 - 941501
				local__G['BackgroundColor3'] = Color3['fromRGB'](-285113 - (-285353), -1033472 + 1033712, -369003 + 369243)
				local__G['TextColor3'] = Color3['fromRGB'](-32865 + 32865, 156261 + -156261, -242856 - (-242856))
				local__G['AutoButtonColor'] = false;
				(Instance['new']('UICorner', local__G))['CornerRadius'] = UDim['new'](-22881 + 22881, -469029 - (-469039))
				local__G['MouseEnter']:Connect(function()
					local__G['BackgroundColor3'] = Color3['fromRGB'](-101155 + 101365, 935567 - 935357, -118482 - (-118692))
				end)
				local__G['MouseLeave']:Connect(function()
					local__G['BackgroundColor3'] = Color3['fromRGB'](-383980 + 384220, 520544 - 520304, 265576 + -265336)
				end)
				return local__G
			end
			local local_byte = local_coroutine('◀ LÙI')
			local_byte['Parent'] = local_string
			local local_unsigned = local_coroutine('TIẾP ▶')
			local_unsigned['Parent'] = local_string
			task['spawn'](function()
				while task['wait'](1029696.5 - 1029696) do
					local local_os = local_bytecode()
					local_i['Text'] = 'Đang ở: Gap ' .. local_os
				end
			end)
			local_unsigned['MouseButton1Click']:Connect(function()
				local local_os = local_bytecode()
				if local_os < local_read then
					local_long(local_os + (587187 - 587186))
				end
			end)
			local_byte['MouseButton1Click']:Connect(function()
				local local_os = local_bytecode()
				if local_os > local_import then
					local_long(local_os - (313067 - 313066))
				end
			end)
			local local_new = Instance['new']('TextButton', local_setvbuf)
			local_new['Size'] = UDim2['fromScale'](.1, .2)
			local_new['Position'] = UDim2['fromScale'](.88, .03)
			local_new['Text'] = 'X'
			local_new['Font'] = Enum['Font']['GothamBlack']
			local_new['TextScaled'] = false
			local_new['TextSize'] = -703542 + 703560
			local_new['BackgroundColor3'] = Color3['fromRGB'](-510320 + 510355, 131812 + -131777, 8067 - 8032)
			local_new['TextColor3'] = Color3['fromRGB'](-83172 - (-83427), -456814 + 457069, -587826 + 588081)
			local_new['AutoButtonColor'] = false
			local_new['ZIndex'] = 241383 + -241378;
			(Instance['new']('UICorner', local_new))['CornerRadius'] = UDim['new'](64739 - 64738, -505456 - (-505456))
			local_new['MouseEnter']:Connect(function()
				local_new['BackgroundColor3'] = Color3['fromRGB'](-859719 - (-859899), -177652 - (-177702), 239513 - 239463)
			end)
			local_new['MouseLeave']:Connect(function()
				local_new['BackgroundColor3'] = Color3['fromRGB'](147400 - 147365, -225732 - (-225767), 169445 + -169410)
			end)
			local_new['MouseButton1Click']:Connect(function()
				local_seek:Destroy()
			end)
		end
		function GUI2()
			local local_os = game:GetService('Players')
			local local__G = game:GetService('TweenService')
			local local_hookfunction = game:GetService('UserInputService')
			local local_import = local_os['LocalPlayer']
			local local_read = Vector3['new'](896316 + -896156, -428589 + 428594, 536616 - 536753)
			local local_j = Vector3['new'](-676725 + 680748, 135526 - 135524, -280306 - (-280169))
			local local_double = -774943 - (-774968)
			local local_length = 347435 + -346535
			local local_bytecode = {}
			for local_os = 378988 + -378988, local_double, -403628 - (-403629) do
				local local__G = local_os / local_double
				local local_hookfunction = local_read:Lerp(local_j, local__G)
				table['insert'](local_bytecode, local_hookfunction)
			end
			local local_wrap = -149156 - (-149157)
			local local_long = #local_bytecode
			local local_size = false
			local local_number
			local function local_seek()
				local local_os = local_import['Character'] or local_import['CharacterAdded']:Wait()
				return local_os:WaitForChild('HumanoidRootPart')
			end
			local function local_math()
				local local_os = local_seek()
				local local__G = 352811 + -352810
				local local_hookfunction = math['huge']
				for local_import, local_read in ipairs(local_bytecode) do
					local local_j = (local_os['Position'] - local_read)['Magnitude']
					if local_j < local_hookfunction then
						local_hookfunction = local_j
						local__G = local_import
					end
				end
				return local__G
			end
			local function local_setvbuf(local_os)
				local local_hookfunction = local_seek()
				local local_import = (local_hookfunction['Position'] - local_os)['Magnitude']
				local local_read = math['clamp'](local_import / local_length, .1, 109925 - 109923)
				local_number = local__G:Create(local_hookfunction, TweenInfo['new'](local_read, Enum['EasingStyle']['Linear']), {
					['CFrame'] = CFrame['new'](local_os)
				})
				local_number:Play()
				local_number['Completed']:Wait()
			end
			local function local_tostring(local_os)
				if local_size then
					return
				end
				local_size = true
				local local__G = local_math()
				if local_os then
					for local_os = local__G, local_long, 666357 + -666356 do
						if not local_size then
							break
						end
						local_setvbuf(local_bytecode[local_os])
					end
				else
					for local_os = local__G, local_wrap, -639285 - (-639284) do
						if not local_size then
							break
						end
						local_setvbuf(local_bytecode[local_os])
					end
				end
				local_size = false
			end
			local function local_tonumber()
				local_size = false
				if local_number then
					local_number:Cancel()
				end
			end
			local local_print = Instance['new']('ScreenGui')
			local_print['Name'] = 'SmartGapUI'
			local_print['ResetOnSpawn'] = false
			local_print['Parent'] = local_import:WaitForChild('PlayerGui')
			local local_i = Instance['new']('Frame', local_print)
			local_i['Position'] = UDim2['fromScale'](.03, .4)
			local_i['BackgroundColor3'] = Color3['fromRGB'](-697380 - (-697398), -285207 - (-285225), 223609 - 223591)
			local_i['BorderSizePixel'] = 754871 - 754871
			local_i['Active'] = true
			local_i['Draggable'] = true
			if local_hookfunction['TouchEnabled'] then
				local_i['Size'] = UDim2['fromScale'](.42, .38)
			else
				local_i['Size'] = UDim2['fromScale'](.22, -447918 + 447918.25)
			end;
			(Instance['new']('UICorner', local_i))['CornerRadius'] = UDim['new'](589490 - 589490, 640244 + -640230)
			local local_string = Instance['new']('UIPadding', local_i)
			local_string['PaddingTop'] = UDim['new'](1010303 - 1010303, -914804 - (-914812))
			local_string['PaddingBottom'] = UDim['new'](-711734 - (-711734), 526394 - 526384)
			local_string['PaddingLeft'] = UDim['new'](-786296 - (-786296), 11308 - 11296)
			local_string['PaddingRight'] = UDim['new'](590130 + -590130, 797381 - 797369)
			local local_isWindows = Instance['new']('UIStroke', local_i)
			local_isWindows['Thickness'] = 212329 - 212327
			local_isWindows['ApplyStrokeMode'] = Enum['ApplyStrokeMode']['Border']
			task['spawn'](function()
				local local_os = 627123 + -627123
				while task['wait']() do
					local_os = local_os + .002
					if local_os > -759479 - (-759480) then
						local_os = 422893 - 422893
					end
					local_isWindows['Color'] = Color3['fromHSV'](local_os, -573938 + 573939, 925886 - 925885)
				end
			end)
			local local_coroutine = Instance['new']('TextLabel', local_i)
			local_coroutine['Size'] = UDim2['fromScale'](-679093 + 679094, .18)
			local_coroutine['BackgroundTransparency'] = 947966 - 947965
			local_coroutine['Text'] = 'Rez Hub V2'
			local_coroutine['Font'] = Enum['Font']['GothamBlack']
			local_coroutine['TextSize'] = 280063 - 280041
			local_coroutine['TextColor3'] = Color3['new'](644276 + -644275, -504688 + 504689, -814201 + 814202)
			local local_byte = Instance['new']('TextLabel', local_i)
			local_byte['Position'] = UDim2['fromScale'](898300 - 898300, .22)
			local_byte['Size'] = UDim2['fromScale'](-563697 + 563698, .18)
			local_byte['BackgroundTransparency'] = 103075 + -103074
			local_byte['Text'] = 'Đang ở: ...'
			local_byte['Font'] = Enum['Font']['GothamBold']
			local_byte['TextSize'] = -741797 - (-741815)
			local_byte['TextColor3'] = Color3['fromRGB'](281669 - 281449, 754359 + -754139, -453778 - (-453998))
			local local_unsigned = Instance['new']('Frame', local_i)
			local_unsigned['Position'] = UDim2['fromScale'](745783 + -745783, .42)
			local_unsigned['Size'] = UDim2['fromScale'](-983805 - (-983806), .08)
			local_unsigned['BackgroundColor3'] = Color3['fromRGB'](1013055 + -1013015, -13432 - (-13472), 912316 + -912276);
			(Instance['new']('UICorner', local_unsigned))['CornerRadius'] = UDim['new'](479599 + -479598, -27617 - (-27617))
			local local_new = Instance['new']('Frame', local_unsigned)
			local_new['Size'] = UDim2['fromScale'](-455214 + 455214, -703286 + 703287)
			local_new['BackgroundColor3'] = Color3['fromRGB'](396780 + -396780, -566514 + 566714, 511023 - 510768);
			(Instance['new']('UICorner', local_new))['CornerRadius'] = UDim['new'](266537 - 266536, -205798 - (-205798))
			local local_tmpname = Instance['new']('Frame', local_i)
			local_tmpname['Position'] = UDim2['fromScale'](999359 + -999359, .6)
			local_tmpname['Size'] = UDim2['fromScale'](-198822 + 198823, .3)
			local_tmpname['BackgroundTransparency'] = -730934 - (-730935)
			local local_loadfile = Instance['new']('UIListLayout', local_tmpname)
			local_loadfile['FillDirection'] = Enum['FillDirection']['Horizontal']
			local_loadfile['HorizontalAlignment'] = Enum['HorizontalAlignment']['Center']
			local_loadfile['Padding'] = UDim['new'](.05, 553585 + -553585)
			local function local_signed(local_os, local__G)
				local local_hookfunction = Instance['new']('TextButton')
				local_hookfunction['Size'] = UDim2['fromScale'](.3, -181605 - (-181606))
				local_hookfunction['Text'] = local_os
				local_hookfunction['Font'] = Enum['Font']['GothamBold']
				local_hookfunction['TextSize'] = -639076 - (-639092)
				local_hookfunction['BackgroundColor3'] = local__G
				local_hookfunction['TextColor3'] = Color3['new'](176485 + -176484, 689013 + -689012, 990143 + -990142)
				local_hookfunction['AutoButtonColor'] = false;
				(Instance['new']('UICorner', local_hookfunction))['CornerRadius'] = UDim['new'](517552 + -517552, 150895 - 150885)
				return local_hookfunction
			end
			local local_apply = local_signed('◀ LÙI', Color3['fromRGB'](-547121 + 547321, 1010693 - 1010623, 619571 + -619501))
			local_apply['Parent'] = local_tmpname
			local local_m = local_signed('STOP', Color3['fromRGB'](109619 - 109539, -1039296 + 1039376, 1004751 - 1004671))
			local_m['Parent'] = local_tmpname
			local local_raise = local_signed('TIẾP ▶', Color3['fromRGB'](283119 - 283049, -200710 - (-200870), 1014399 + -1014144))
			local_raise['Parent'] = local_tmpname
			local local_open = Instance['new']('TextButton', local_i)
			local_open['Size'] = UDim2['fromScale'](.1, .16)
			local_open['Position'] = UDim2['fromScale'](.88, .02)
			local_open['Text'] = 'X'
			local_open['Font'] = Enum['Font']['GothamBlack']
			local_open['TextSize'] = 754935 + -754921
			local_open['BackgroundColor3'] = Color3['fromRGB'](-260264 + 260299, 46561 + -46526, -676754 - (-676789))
			local_open['TextColor3'] = Color3['new'](-315882 + 315883, -962877 - (-962878), 18337 + -18336);
			(Instance['new']('UICorner', local_open))['CornerRadius'] = UDim['new'](152294 - 152293, -766840 + 766840)
			local_raise['MouseButton1Click']:Connect(function()
				local_tostring(true)
			end)
			local_apply['MouseButton1Click']:Connect(function()
				local_tostring(false)
			end)
			local_m['MouseButton1Click']:Connect(function()
				local_tonumber()
			end)
			local_open['MouseButton1Click']:Connect(function()
				local_tonumber()
				local_print:Destroy()
			end)
			task['spawn'](function()
				while task['wait'](.3) do
					local local_os = local_math()
					local_byte['Text'] = 'Đang ở: Điểm ' .. (local_os .. ('/' .. local_long))
					local_new['Size'] = UDim2['fromScale'](local_os / local_long, 174438 - 174437)
				end
			end)
		end
		local local_os = (game:GetService('Players'))['LocalPlayer']
		local local__G = local_os['PlayerGui']:FindFirstChild('Xeter')
		if local__G then
			local__G:Destroy()
		end
		local local_hookfunction = (loadstring(game:HttpGet('https://github.com/dawid-scripts/Fluent/releases/latest/download/main.lua')))()
		local local_import = game:GetService('UserInputService')
		local local_read = local_import['TouchEnabled'] and not local_import['KeyboardEnabled']
		local local_j = local_read and UDim2['fromScale'](.6, .8) or UDim2['fromOffset'](-226471 + 226971, 333994 + -333644)
		local local_double = local_hookfunction:CreateWindow({
			['Title'] = 'Rez Hub | Premium';
			['SubTitle'] = 'CDVN - 99 Night - Tsunami',
			['TabWidth'] = 141860 + -141740,
			['Theme'] = 'Darker',
			['Acrylic'] = false;
			['Size'] = local_j;
			['MinimizeKey'] = Enum['KeyCode']['J']
		})
		local_hookfunction:Notify({
			['Title'] = 'Vào Tab Info Đọc Thông Báoooo';
			['Content'] = 'Lẹ deeee',
			['Duration'] = -336810 + 336815
		})
		task['wait'](428845 + -428844.5)
		local_hookfunction:Notify({
			['Title'] = 'Discord',
			['Content'] = 'Tham Gia Discord Để Nhận Thông Báo Nhé!';
			['Duration'] = 172138 - 172133
		})
		task['wait'](-944060.5 - (-944061))
		local local_length = {
			['Info'] = local_double:AddTab({
				['Title'] = 'Info',
				['Icon'] = 'info'
			});
			task['wait'](.1);
			['Event'] = local_double:AddTab({
				['Title'] = 'Phóng Xạ',
				['Icon'] = 'flask-conical'
			});
			task['wait'](.1);
			['UFO'] = local_double:AddTab({
				['Title'] = 'UFO',
				['Icon'] = 'rocket'
			}),
			task['wait'](.1),
			['Game'] = local_double:AddTab({
				['Title'] = 'Game';
				['Icon'] = 'gamepad-2'
			});
			task['wait'](.1);
			['Valt'] = local_double:AddTab({
				['Title'] = 'Valentine';
				['Icon'] = 'heart'
			}),
			task['wait'](.1),
			['Money'] = local_double:AddTab({
				['Title'] = 'Money';
				['Icon'] = 'banknote'
			});
			task['wait'](.1);
			['Br'] = local_double:AddTab({
				['Title'] = 'Brainrot',
				['Icon'] = 'crown'
			});
			task['wait'](.1);
			['Main'] = local_double:AddTab({
				['Title'] = 'Main',
				['Icon'] = 'layout-grid'
			}),
			task['wait'](.1);
			['Player'] = local_double:AddTab({
				['Title'] = 'Người Chơi',
				['Icon'] = 'user'
			});
			task['wait'](.1);
			['PVP'] = local_double:AddTab({
				['Title'] = 'PVP',
				['Icon'] = 'sword'
			});
			task['wait'](.1),
			['Auto'] = local_double:AddTab({
				['Title'] = 'Auto';
				['Icon'] = 'wrench'
			}),
			task['wait'](.1);
			['Up'] = local_double:AddTab({
				['Title'] = 'Nâng Cấp',
				['Icon'] = 'chevrons-up'
			});
			task['wait'](.1);
			['bug'] = local_double:AddTab({
				['Title'] = 'Báo lỗi';
				['Icon'] = 'bug'
			}),
			['Server'] = local_double:AddTab({
				['Title'] = 'Hop Server',
				['Icon'] = 'radio-receiver'
			})
		}
		local_double:SelectTab(local_length['Info'])
		local local_bytecode = game:GetService('Players')
		local local_wrap = game:GetService('RunService')
		local local_long = game:GetService('UserInputService')
		local local_size = game:GetService('VirtualInputManager')
		local local_number = local_bytecode['LocalPlayer']
		local local_seek = Instance['new']('ScreenGui')
		local local_math = Instance['new']('ImageButton')
		local local_setvbuf = Instance['new']('UICorner')
		local local_tostring = Instance['new']('UIStroke')
		if local_seek and local_seek:FindFirstChild('Xeter') then
			local_seek:Destroy()
		end
		local_seek['Name'] = 'Xeter'
		local_seek['Parent'] = local_number:WaitForChild('PlayerGui')
		local_seek['ZIndexBehavior'] = Enum['ZIndexBehavior']['Sibling']
		local_seek['ResetOnSpawn'] = false
		local_math['Name'] = 'ToggleUIButton'
		local_math['Parent'] = local_seek
		local_math['BackgroundColor3'] = Color3['fromRGB'](738231 - 738231, 185126 - 185126, 652084 - 652084)
		local_math['Position'] = UDim2['new'](.12, -418349 - (-418349), .09, 63074 - 63074)
		local_math['Size'] = UDim2['new'](322922 + -322922, -37921 + 37972, -853306 - (-853306), 435104 - 435053)
		local_math['Image'] = 'rbxassetid://100519461243477'
		local_math['AutoButtonColor'] = false
		local_setvbuf['Parent'] = local_math
		local_setvbuf['CornerRadius'] = UDim['new'](-982206 + 982206, 362419 - 362411)
		local_tostring['Parent'] = local_math
		local_tostring['Thickness'] = -20766 - (-20769)
		local_tostring['ApplyStrokeMode'] = Enum['ApplyStrokeMode']['Border']
		local_tostring['LineJoinMode'] = Enum['LineJoinMode']['Round']
		task['spawn'](function()
			local local_os = -767416 + 767416
			local_wrap['RenderStepped']:Connect(function(local__G)
				local_os = (local_os + local__G * (-689972.75 - (-689973))) % (731255 + -731254)
				local_tostring['Color'] = Color3['fromHSV'](local_os, 763256 + -763255, 423469 + -423468)
			end)
		end)
		local local_tonumber = false
		local local_print
		local local_i
		local local_string
		local function local_isWindows(local_os)
			local local__G = local_os['Position'] - local_i
			local local_hookfunction = UDim2['new'](local_string['X']['Scale'], local_string['X']['Offset'] + local__G['X'], local_string['Y']['Scale'], local_string['Y']['Offset'] + local__G['Y'])
			local_math['Position'] = local_math['Position']:Lerp(local_hookfunction, 943997 + -943996.75)
		end
		local_math['InputBegan']:Connect(function(local_os)
			if local_os['UserInputType'] == Enum['UserInputType']['MouseButton1'] or local_os['UserInputType'] == Enum['UserInputType']['Touch'] then
				local_tonumber = true
				local_i = local_os['Position']
				local_string = local_math['Position']
				local_math:TweenSize(UDim2['new'](-15968 + 15968, -899900 + 899956, 191782 + -191782, -457142 - (-457198)), 'Out', 'Quad', .1, true)
				local_os['Changed']:Connect(function()
					if local_os['UserInputState'] == Enum['UserInputState']['End'] then
						local_tonumber = false
						local_math:TweenSize(UDim2['new'](-566194 - (-566194), 73442 + -73391, 937789 - 937789, 634676 + -634625), 'Out', 'Quad', .1, true)
					end
				end)
			end
		end)
		local_math['InputChanged']:Connect(function(local_os)
			if local_os['UserInputType'] == Enum['UserInputType']['MouseMovement'] or local_os['UserInputType'] == Enum['UserInputType']['Touch'] then
				local_print = local_os
			end
		end)
		local_long['InputChanged']:Connect(function(local_os)
			if local_os == local_print and local_tonumber then
				local_isWindows(local_os)
			end
		end)
		local_math['MouseButton1Click']:Connect(function()
			local_double:Minimize()
		end)
		local_length['Br']:AddParagraph({
			['Title'] = 'Auto Nhặt Brainrot sẽ sớm có';
			['Content'] = 'vui lòng chờ hihi'
		})
		local_length['Info']:AddParagraph({
			['Title'] = 'UPDATEEEE';
			['Content'] = 'bản cập nhật có: Auto bán trong sự kiện Valentine, fix lỗi xuyên tường, thêm auto vượt thử thách và fix lỗi nhặt xu cho sự kiện phóng xạ, nâng cấp mở rộng 2 bên tường ,....'
		})
		local_length['Info']:AddParagraph({
			['Title'] = 'Sang Tuần Đi Học Rồi DMMMM';
			['Content'] = 'tận hưởng nốt đi nha ae =)))) tiền tết của rez có 1tr1 àaaa, làm 1 mạch xuyên đêm tới 6g sáng, có gì lỗi thì cứ báo bên tab bug nhaa cảm ơn ae nhìu nhìuu'
		})
		local local_coroutine = 723446 + -723431
		local local_byte = -886779 - (-886779)
		local local_unsigned = game:GetService('HttpService')
		local local_new = game:GetService('Players')
		local local_tmpname = 'https://discord.com/api/webhooks/1473422288761389229/bpo3zsF3LGDEaQ6Ua3oi5JDm5ec92xi55BGLgCSNdeibNuyb-aqcSOHpoUnob7AHJV3V'
		local local_loadfile = syn and syn['request'] or http_request or request or fluxus and fluxus['request']
		local local_signed
		local_length['bug']:AddSection('Báo lỗi / mong muốn update')
		local_length['bug']:AddInput('WebhookMessage', {
			['Title'] = 'Báo cáo lỗi',
			['Default'] = '',
			['Placeholder'] = 'Nhập nội dung...';
			['Numeric'] = false,
			['Finished'] = false;
			['Callback'] = function(local_os)
				local_signed = local_os
			end
		})
		local_length['bug']:AddButton({
			['Title'] = 'Gửi Tin Nhắn';
			['Description'] = 'Cảm ơn bạn đã đóng góp nhaa <3';
			['Callback'] = function()
				local local_os = tick()
				if local_os - local_byte < local_coroutine then
					local local__G = math['ceil'](local_coroutine - (local_os - local_byte))
					local_hookfunction:Notify({
						['Title'] = 'Vui lòng chờ',
						['Content'] = 'Bạn cần đợi ' .. (local__G .. ' giây nữa!'),
						['Duration'] = -856504 - (-856507)
					})
					return
				end
				if not local_signed or local_signed == '' then
					local_hookfunction:Notify({
						['Title'] = 'Lỗi';
						['Content'] = 'Bạn chưa nhập nội dung!';
						['Duration'] = 494063 + -494060
					})
					return
				end
				local_byte = local_os
				if not local_loadfile then
					warn('Executor không hỗ trợ request!')
					return
				end
				local local__G = local_new['LocalPlayer']
				local local_import = 'game:GetService("TeleportService"):TeleportToPlaceInstance(' .. (game['PlaceId'] .. (', "' .. (game['JobId'] .. '", game.Players.LocalPlayer)')))
				local local_read = 'https://www.roblox.com/headshot-thumbnail/image?userId=' .. (local__G['UserId'] .. '&width=420&height=420&format=png')
				local local_j = {
					['username'] = 'Rez Hub Logger',
					['embeds'] = {
						{
							['title'] = '_______________________',
							['description'] = '',
							['color'] = 16479193 - (-232487),
							['thumbnail'] = {
								['url'] = local_read
							};
							['fields'] = {
								{
									['name'] = '',
									['value'] = local_signed;
									['inline'] = false
								},
								{
									['name'] = '';
									['value'] = local__G['Name'],
									['inline'] = true
								};
								{
									['name'] = '',
									['value'] = '```lua\n' .. (local_import .. '\n```');
									['inline'] = false
								}
							},
							['footer'] = {
								['text'] = 'Rez Hub System • ' .. os['date']('d/m/Y H:M:S')
							}
						}
					}
				}
				local local_double, local_length = pcall(function()
					local_loadfile({
						['Url'] = local_tmpname,
						['Method'] = 'POST';
						['Headers'] = {
							['Content-Type'] = 'application/json'
						},
						['Body'] = local_unsigned:JSONEncode(local_j)
					})
				end)
				if local_double then
					local_hookfunction:Notify({
						['Title'] = 'Thành Công',
						['Content'] = 'Đã gửi tới rez!',
						['Duration'] = 834941 - 834938
					})
				else
					local_hookfunction:Notify({
						['Title'] = 'Lỗi';
						['Content'] = 'Gửi thất bại!';
						['Duration'] = 720758 + -720755
					})
					warn(local_length)
				end
			end
		})
		local function local_apply(local_os, local__G, local_import)
			local_length['Info']:AddButton({
				['Title'] = local__G;
				['Description'] = 'Nhấn để sao chép link',
				['Callback'] = function()
					setclipboard(local_import)
					local_hookfunction:Notify({
						['Title'] = ' Đã sao chép!';
						['Content'] = local__G .. ' đã được sao chép vào clipboard.';
						['Duration'] = -306535 - (-306538)
					})
				end
			})
		end
		local_apply(local_length['Info'], '📎 Discord', 'https://discord.gg/NAyGX2Q7d6')
		local local_m = game:GetService('ReplicatedStorage')
		local local_raise = (local_m:WaitForChild('Packages'))['Net']:WaitForChild('RF/WheelSpin.Roll')
		local local_open = false
		local local_code = .1
		task['spawn'](function()
			while task['wait'](local_code) do
				if local_open then
					pcall(function()
						local_raise:InvokeServer()
					end)
				end
			end
		end);
		(local_length['Event']:AddToggle('SpamSell', {
			['Title'] = 'Auto Random';
			['Default'] = false
		})):OnChanged(function(local_os)
			local_open = local_os
		end)
		local local_xpcall = game:GetService('Players')
		local local_upvalueid = local_xpcall['LocalPlayer']
		local local_select = false
		local local_setupvalue = nil
		local function local_iterator()
			local local_os = local_upvalueid['Character'] or local_upvalueid['CharacterAdded']:Wait()
			local local__G = local_os:WaitForChild('HumanoidRootPart')
			local local_hookfunction = workspace:FindFirstChild('RadioactiveMap_SharedInstances')
			if local_hookfunction and local_hookfunction:FindFirstChild('ObbyEnd') then
				local local_os = local_hookfunction['ObbyEnd']['Position'] + Vector3['new'](974526 + -974526, -465897 - (-465902), 237607 - 237607)
				local__G['CFrame'] = CFrame['new'](local_os)
			end
		end
		local function local_gmatch(local_os)
			local_select = local_os
			local local__G = local_upvalueid['Character'] or local_upvalueid['CharacterAdded']:Wait()
			local local_hookfunction = local__G:WaitForChild('HumanoidRootPart')
			if local_os then
				local_setupvalue = local_hookfunction['CFrame']
				local_iterator()
			else
				if local_setupvalue then
					local_hookfunction['CFrame'] = local_setupvalue
				end
			end
		end
		local_length['Event']:AddToggle('TeleportObbyEnd', {
			['Title'] = 'Auto Vượt Thử Thách',
			['Default'] = false;
			['Callback'] = function(local_os)
				local_gmatch(local_os)
			end
		})
		local function local_int()
			local local_os = {
				Vector3['new'](199.82, -2.59, 5.52),
				Vector3['new'](283.18, -2.59, .92);
				Vector3['new'](398.06, -2.59, 5.53),
				Vector3['new'](543.88, -2.59, 2.47);
				Vector3['new'](756.93, -2.59, 5.91),
				Vector3['new'](1074.11, -2.59, 1.92);
				Vector3['new'](1547.94, -2.59, 3.42);
				Vector3['new'](2249.15, -2.59, 2.36);
				Vector3['new'](2956.73, -2.59, -319025 - (-319018)),
				Vector3['new'](3319.73, -2.59, 359591 - 359595);
				Vector3['new'](3673.73, -2.59, -906364 + 906358),
				Vector3['new'](4004.73, -2.59, -636405 - (-636404))
			}
			local local__G = game:GetService('Players')
			local local_hookfunction = game:GetService('RunService')
			local local_import = local__G['LocalPlayer']
			local local_read
			local local_j
			local local_double = false
			local local_bytecode = 786744 + -786044
			local local_wrap = -816057 + 816058
			local local_long = 275377 - 275177
			local local_size = -953406 + 953407
			local local_number
			local local_seek
			local local_math
			local local_setvbuf
			local function local_tostring(local_os)
				local_read = local_os
				local_j = local_read:WaitForChild('HumanoidRootPart')
				if local_double then
					task['wait'](.3)
					SetupFly_px()
					StartNoClip_px()
				end
			end
			local_import['CharacterAdded']:Connect(local_tostring)
			if local_import['Character'] then
				local_tostring(local_import['Character'])
			end
			local local_tonumber = {}
			function StartNoClip_px()
				if local_setvbuf then
					return
				end
				local_setvbuf = local_hookfunction['Stepped']:Connect(function()
					if local_read then
						for local_os, local__G in ipairs(local_read:GetDescendants()) do
							if local__G:IsA('BasePart') then
								if local_tonumber[local__G] == nil then
									local_tonumber[local__G] = local__G['CanCollide']
								end
								local__G['CanCollide'] = false
							end
						end
					end
				end)
			end
			function StopNoClip_px()
				if local_setvbuf then
					local_setvbuf:Disconnect()
					local_setvbuf = nil
				end
				for local_os, local__G in pairs(local_tonumber) do
					if local_os and local_os['Parent'] then
						local_os['CanCollide'] = local__G
					end
				end
				table['clear'](local_tonumber)
			end
			function StopFly_px()
				if local_number then
					local_number:Destroy()
					local_number = nil
				end
				if local_seek then
					local_seek:Destroy()
					local_seek = nil
				end
			end
			function SetupFly_px()
				if not local_j then
					return
				end
				StopFly_px()
				local local_os = Instance['new']('Attachment', local_j)
				local_number = Instance['new']('LinearVelocity')
				local_number['Attachment0'] = local_os
				local_number['MaxForce'] = math['huge']
				local_number['VectorVelocity'] = Vector3['zero']
				local_number['Parent'] = local_j
				local_seek = Instance['new']('AlignOrientation')
				local_seek['Attachment0'] = local_os
				local_seek['MaxTorque'] = math['huge']
				local_seek['Responsiveness'] = 619059 + -619034
				local_seek['Parent'] = local_j
			end
			local function local_print(local_os)
				if not local_os or not local_j or not local_number then
					return
				end
				local local__G = Vector3['new'](local_os['X'], local_os['Y'] + local_wrap, local_os['Z'])
				local local_hookfunction = local__G - local_j['Position']
				local local_import = local_hookfunction['Magnitude']
				if local_import < 754935 + -754930 then
					local_number['VectorVelocity'] = local_hookfunction * (24998 - 24993)
					return
				end
				local_number['VectorVelocity'] = local_hookfunction['Unit'] * local_bytecode
				local_seek['CFrame'] = CFrame['lookAt'](local_j['Position'], local__G)
			end
			local function local_i()
				local local__G, local_hookfunction = nil, math['huge']
				for local_os, local_import in ipairs(local_os) do
					local local_read = (local_j['Position'] - local_import)['Magnitude']
					if local_read < local_hookfunction then
						local_hookfunction = local_read
						local__G = local_import
					end
				end
				return local__G
			end
			local function local_string()
				if not local_j then
					return nil
				end
				local local_os
				local local__G = math['huge']
				local function local_hookfunction(local_hookfunction)
					if not local_hookfunction then
						return
					end
					for local_hookfunction, local_import in ipairs(local_hookfunction:GetDescendants()) do
						if local_import:IsA('TouchTransmitter') then
							local local_hookfunction = local_import['Parent']
							if local_hookfunction and local_hookfunction:IsA('BasePart') then
								local local_import = (local_j['Position'] - local_hookfunction['Position'])['Magnitude']
								if local_import < local__G then
									local__G = local_import
									local_os = local_hookfunction
								end
							end
						end
					end
				end
				local_hookfunction(workspace:FindFirstChild('WaveCoinDrops'))
				local local_import = workspace:FindFirstChild('EventParts')
				if local_import then
					local_hookfunction(local_import:FindFirstChild('RadioactiveCoinsFolder'))
				end
				return local_os
			end
			local function local_isWindows()
				local local_os, local__G = nil, math['huge']
				for local_hookfunction, local_import in ipairs(workspace:GetChildren()) do
					if local_import:IsA('Model') and (local_import['Name']:lower()):find('wave') then
						local local_hookfunction = local_import:FindFirstChild('Hitbox', true)
						if local_hookfunction and local_hookfunction:IsA('BasePart') then
							local local_import = (local_j['Position'] - local_hookfunction['Position'])['Magnitude']
							if local_import < local__G then
								local__G = local_import
								local_os = local_hookfunction
							end
						end
					end
				end
				return local_os, local__G
			end
			function StartSystem_px()
				if local_math then
					return
				end
				local_math = local_hookfunction['Heartbeat']:Connect(function()
					if not local_double then
						return
					end
					if not local_read or not local_j or not local_j['Parent'] then
						return
					end
					local local_os, local__G = local_isWindows()
					if local_os and local__G < local_long then
						local local_os = local_i()
						if local_os then
							local local__G = (local_j['Position'] - local_os)['Magnitude']
							if local__G > local_size then
								local_print(local_os)
							else
								if local_number then
									local_number['VectorVelocity'] = Vector3['zero']
								end
							end
						end
					else
						local local_os = local_string()
						if local_os then
							local_print(local_os['Position'])
						end
					end
				end)
			end
			local_length['Event']:AddToggle('AutoWaveEvadeTicket_px', {
				['Title'] = 'Auto Farm PX ( Fix )';
				['Description'] = 'Auto né sóng + farm',
				['Default'] = false;
				['Callback'] = function(local_os)
					local_double = local_os
					if local_os then
						SetupFly_px()
						StartNoClip_px()
						StartSystem_px()
					else
						if local_math then
							local_math:Disconnect()
							local_math = nil
						end
						StopNoClip_px()
						StopFly_px()
					end
				end
			})
		end
		local_int()
		local local_value = false
		local local_char = {
			[884540 - 884539] = 'UFO';
			[-9694 - (-9696)] = false
		}
		local_length['UFO']:AddToggle('SpamWheelSpin', {
			['Title'] = 'Auto Randmon',
			['Default'] = false,
			['Callback'] = function(local_os)
				local_value = local_os
				if local_os then
					task['spawn'](function()
						while local_value do
							pcall(function()
								((game:GetService('ReplicatedStorage'))['Packages']['Net']:FindFirstChild('RF/WheelSpin.Roll')):InvokeServer(unpack(local_char))
							end)
							task['wait'](.1)
						end
					end)
				end
			end
		})
		local function local_include()
			local local_os = {
				Vector3['new'](199.82, -2.59, 5.52),
				Vector3['new'](283.18, -2.59, .92),
				Vector3['new'](398.06, -2.59, 5.53);
				Vector3['new'](543.88, -2.59, 2.47);
				Vector3['new'](756.93, -2.59, 5.91);
				Vector3['new'](1074.11, -2.59, 1.92);
				Vector3['new'](1547.94, -2.59, 3.42),
				Vector3['new'](2249.15, -2.59, 2.36);
				Vector3['new'](2956.73, -2.59, 98403 + -98410);
				Vector3['new'](3319.73, -2.59, 72158 - 72162);
				Vector3['new'](3673.73, -2.59, 544491 - 544497),
				Vector3['new'](4004.73, -2.59, 806584 - 806585)
			}
			local local__G = game:GetService('Players')
			local local_hookfunction = game:GetService('RunService')
			local local_import = local__G['LocalPlayer']
			local local_read
			local local_j
			local local_double = false
			local local_bytecode = 502956 - 502256
			local local_wrap = 967998 + -967997
			local local_long = -66138 - (-66338)
			local local_size = 627827 + -627826
			local local_number
			local local_seek
			local local_math
			local local_setvbuf
			local function local_tostring(local_os)
				local_read = local_os
				local_j = local_read:WaitForChild('HumanoidRootPart')
				if local_double then
					task['wait'](.3)
					SetupFly_ufo()
					StartNoClip_ufo()
				end
			end
			local_import['CharacterAdded']:Connect(local_tostring)
			if local_import['Character'] then
				local_tostring(local_import['Character'])
			end
			local local_tonumber = {}
			function StartNoClip_ufo()
				if local_setvbuf then
					return
				end
				local_setvbuf = local_hookfunction['Stepped']:Connect(function()
					if local_read then
						for local_os, local__G in ipairs(local_read:GetDescendants()) do
							if local__G:IsA('BasePart') then
								if local_tonumber[local__G] == nil then
									local_tonumber[local__G] = local__G['CanCollide']
								end
								local__G['CanCollide'] = false
							end
						end
					end
				end)
			end
			function StopNoClip_ufo()
				if local_setvbuf then
					local_setvbuf:Disconnect()
					local_setvbuf = nil
				end
				for local_os, local__G in pairs(local_tonumber) do
					if local_os and local_os['Parent'] then
						local_os['CanCollide'] = local__G
					end
				end
				table['clear'](local_tonumber)
			end
			function StopFly_ufo()
				if local_number then
					local_number:Destroy()
					local_number = nil
				end
				if local_seek then
					local_seek:Destroy()
					local_seek = nil
				end
			end
			function SetupFly_ufo()
				if not local_j then
					return
				end
				StopFly_ufo()
				local local_os = Instance['new']('Attachment', local_j)
				local_number = Instance['new']('LinearVelocity')
				local_number['Attachment0'] = local_os
				local_number['MaxForce'] = math['huge']
				local_number['VectorVelocity'] = Vector3['zero']
				local_number['Parent'] = local_j
				local_seek = Instance['new']('AlignOrientation')
				local_seek['Attachment0'] = local_os
				local_seek['MaxTorque'] = math['huge']
				local_seek['Responsiveness'] = -344427 + 344452
				local_seek['Parent'] = local_j
			end
			local function local_print(local_os)
				if not local_os or not local_j or not local_number then
					return
				end
				local local__G = Vector3['new'](local_os['X'], local_os['Y'] + local_wrap, local_os['Z'])
				local local_hookfunction = local__G - local_j['Position']
				local local_import = local_hookfunction['Magnitude']
				if local_import < 432941 + -432936 then
					local_number['VectorVelocity'] = local_hookfunction * (346027 + -346022)
					return
				end
				local_number['VectorVelocity'] = local_hookfunction['Unit'] * local_bytecode
				local_seek['CFrame'] = CFrame['lookAt'](local_j['Position'], local__G)
			end
			local function local_i()
				local local__G, local_hookfunction = nil, math['huge']
				for local_os, local_import in ipairs(local_os) do
					local local_read = (local_j['Position'] - local_import)['Magnitude']
					if local_read < local_hookfunction then
						local_hookfunction = local_read
						local__G = local_import
					end
				end
				return local__G
			end
			local function local_string()
				local local_os
				local local__G = math['huge']
				local function local_hookfunction(local_hookfunction)
					if not local_hookfunction then
						return
					end
					for local_hookfunction, local_import in ipairs(local_hookfunction:GetDescendants()) do
						if local_import:IsA('TouchTransmitter') then
							local local_hookfunction = local_import['Parent']
							if local_hookfunction and local_hookfunction:IsA('BasePart') then
								local local_import = (local_j['Position'] - local_hookfunction['Position'])['Magnitude']
								if local_import < local__G then
									local__G = local_import
									local_os = local_hookfunction
								end
							end
						end
					end
				end
				local_hookfunction(workspace:FindFirstChild('UFOEventParts'))
				return local_os
			end
			local function local_isWindows()
				local local_os, local__G = nil, math['huge']
				for local_hookfunction, local_import in ipairs(workspace:GetChildren()) do
					if local_import:IsA('Model') and (local_import['Name']:lower()):find('wave') then
						local local_hookfunction = local_import:FindFirstChild('Hitbox', true)
						if local_hookfunction and local_hookfunction:IsA('BasePart') then
							local local_import = (local_j['Position'] - local_hookfunction['Position'])['Magnitude']
							if local_import < local__G then
								local__G = local_import
								local_os = local_hookfunction
							end
						end
					end
				end
				return local_os, local__G
			end
			function StartSystem_ufo()
				if local_math then
					return
				end
				local_math = local_hookfunction['Heartbeat']:Connect(function()
					if not local_double then
						return
					end
					if not local_read or not local_j or not local_j['Parent'] then
						return
					end
					local local_os, local__G = local_isWindows()
					if local_os and local__G < local_long then
						local local_os = local_i()
						if local_os then
							local local__G = (local_j['Position'] - local_os)['Magnitude']
							if local__G > local_size then
								local_print(local_os)
							else
								if local_number then
									local_number['VectorVelocity'] = Vector3['zero']
								end
							end
						end
					else
						local local_os = local_string()
						if local_os then
							local_print(local_os['Position'])
						end
					end
				end)
			end
			local_length['UFO']:AddToggle('AutoWaveEvadeTicket_ufo', {
				['Title'] = 'Auto Farm Coin UFO';
				['Description'] = 'Auto né sóng + farm';
				['Default'] = false,
				['Callback'] = function(local_os)
					local_double = local_os
					if local_os then
						SetupFly_ufo()
						StartNoClip_ufo()
						StartSystem_ufo()
					else
						if local_math then
							local_math:Disconnect()
							local_math = nil
						end
						StopNoClip_ufo()
						StopFly_ufo()
					end
				end
			})
		end
		local_include()
		local local_roblox = game:GetService('ReplicatedStorage')
		local local_increment = ((local_roblox:WaitForChild('Packages')):WaitForChild('Net')):WaitForChild('RF/WheelSpin.Roll')
		local local_rawequal = false
		local local_randomseed = .1
		task['spawn'](function()
			while task['wait'](local_randomseed) do
				if local_rawequal then
					pcall(function()
						local_increment:InvokeServer('Arcade', false)
					end)
				end
			end
		end);
		(local_length['Game']:AddToggle('SpamSpin', {
			['Title'] = 'Auto Random';
			['Default'] = false
		})):OnChanged(function(local_os)
			local_rawequal = local_os
		end)
		local function local_searchpath()
			local local_os = {
				Vector3['new'](199.82, -2.59, 5.52);
				Vector3['new'](283.18, -2.59, .92),
				Vector3['new'](398.06, -2.59, 5.53);
				Vector3['new'](543.88, -2.59, 2.47),
				Vector3['new'](756.93, -2.59, 5.91),
				Vector3['new'](1074.11, -2.59, 1.92);
				Vector3['new'](1547.94, -2.59, 3.42);
				Vector3['new'](2249.15, -2.59, 2.36),
				Vector3['new'](2956.73, -2.59, -40737 + 40730),
				Vector3['new'](3319.73, -2.59, 131108 + -131112);
				Vector3['new'](3673.73, -2.59, 147685 + -147691),
				Vector3['new'](4004.73, -2.59, 667701 + -667702)
			}
			local local__G = game:GetService('Players')
			local local_hookfunction = game:GetService('RunService')
			local local_import = local__G['LocalPlayer']
			local local_read
			local local_j
			local local_double = false
			local local_bytecode = -456946 - (-457646)
			local local_wrap = 421934 - 421933
			local local_long = -854835 - (-855035)
			local local_size = -22752 - (-22753)
			local local_number
			local local_seek
			local local_math
			local local_setvbuf
			local function local_tostring(local_os)
				local_read = local_os
				local_j = local_read:WaitForChild('HumanoidRootPart')
				if local_double then
					task['wait'](.3)
					SetupFly_game()
					StartNoClip_game()
				end
			end
			local_import['CharacterAdded']:Connect(local_tostring)
			if local_import['Character'] then
				local_tostring(local_import['Character'])
			end
			local local_tonumber = {}
			function StartNoClip_game()
				if local_setvbuf then
					return
				end
				local_setvbuf = local_hookfunction['Stepped']:Connect(function()
					if local_read then
						for local_os, local__G in ipairs(local_read:GetDescendants()) do
							if local__G:IsA('BasePart') then
								if local_tonumber[local__G] == nil then
									local_tonumber[local__G] = local__G['CanCollide']
								end
								local__G['CanCollide'] = false
							end
						end
					end
				end)
			end
			function StopNoClip_game()
				if local_setvbuf then
					local_setvbuf:Disconnect()
					local_setvbuf = nil
				end
				for local_os, local__G in pairs(local_tonumber) do
					if local_os and local_os['Parent'] then
						local_os['CanCollide'] = local__G
					end
				end
				table['clear'](local_tonumber)
			end
			function StopFly_game()
				if local_number then
					local_number:Destroy()
					local_number = nil
				end
				if local_seek then
					local_seek:Destroy()
					local_seek = nil
				end
			end
			function SetupFly_game()
				if not local_j then
					return
				end
				StopFly_game()
				local local_os = Instance['new']('Attachment', local_j)
				local_number = Instance['new']('LinearVelocity')
				local_number['Attachment0'] = local_os
				local_number['MaxForce'] = math['huge']
				local_number['VectorVelocity'] = Vector3['zero']
				local_number['Parent'] = local_j
				local_seek = Instance['new']('AlignOrientation')
				local_seek['Attachment0'] = local_os
				local_seek['MaxTorque'] = math['huge']
				local_seek['Responsiveness'] = -975845 - (-975870)
				local_seek['Parent'] = local_j
			end
			local function local_print(local_os)
				if not local_os or not local_j or not local_number then
					return
				end
				local local__G = Vector3['new'](local_os['X'], local_os['Y'] + local_wrap, local_os['Z'])
				local local_hookfunction = local__G - local_j['Position']
				local local_import = local_hookfunction['Magnitude']
				if local_import < 301481 + -301476 then
					local_number['VectorVelocity'] = local_hookfunction * (538486 - 538481)
					return
				end
				local_number['VectorVelocity'] = local_hookfunction['Unit'] * local_bytecode
				local_seek['CFrame'] = CFrame['lookAt'](local_j['Position'], local__G)
			end
			local function local_i()
				local local__G, local_hookfunction = nil, math['huge']
				for local_os, local_import in ipairs(local_os) do
					local local_read = (local_j['Position'] - local_import)['Magnitude']
					if local_read < local_hookfunction then
						local_hookfunction = local_read
						local__G = local_import
					end
				end
				return local__G
			end
			local function local_string()
				local local_os
				local local__G = math['huge']
				local function local_hookfunction(local_hookfunction)
					if not local_hookfunction then
						return
					end
					for local_hookfunction, local_import in ipairs(local_hookfunction:GetDescendants()) do
						if local_import:IsA('TouchTransmitter') then
							local local_hookfunction = local_import['Parent']
							if local_hookfunction and local_hookfunction:IsA('BasePart') then
								local local_import = (local_j['Position'] - local_hookfunction['Position'])['Magnitude']
								if local_import < local__G then
									local__G = local_import
									local_os = local_hookfunction
								end
							end
						end
					end
				end
				local_hookfunction(workspace:FindFirstChild('ArcadeEventConsoles'))
				local_hookfunction(workspace:FindFirstChild('ArcadeEventTickets'))
				return local_os
			end
			local function local_isWindows()
				local local_os, local__G = nil, math['huge']
				for local_hookfunction, local_import in ipairs(workspace:GetChildren()) do
					if local_import:IsA('Model') and (local_import['Name']:lower()):find('wave') then
						local local_hookfunction = local_import:FindFirstChild('Hitbox', true)
						if local_hookfunction and local_hookfunction:IsA('BasePart') then
							local local_import = (local_j['Position'] - local_hookfunction['Position'])['Magnitude']
							if local_import < local__G then
								local__G = local_import
								local_os = local_hookfunction
							end
						end
					end
				end
				return local_os, local__G
			end
			function StartSystem_game()
				if local_math then
					return
				end
				local_math = local_hookfunction['Heartbeat']:Connect(function()
					if not local_double then
						return
					end
					if not local_read or not local_j or not local_j['Parent'] then
						return
					end
					local local_os, local__G = local_isWindows()
					if local_os and local__G < local_long then
						local local_os = local_i()
						if local_os then
							local local__G = (local_j['Position'] - local_os)['Magnitude']
							if local__G > local_size then
								local_print(local_os)
							else
								if local_number then
									local_number['VectorVelocity'] = Vector3['zero']
								end
							end
						end
					else
						local local_os = local_string()
						if local_os then
							local_print(local_os['Position'])
						end
					end
				end)
			end
			local_length['Game']:AddToggle('AutoWaveEvadeTicket_game', {
				['Title'] = 'Auto Vé + Game ( Beta )',
				['Description'] = 'Auto né sóng + farm vé mượt',
				['Default'] = false;
				['Callback'] = function(local_os)
					local_double = local_os
					if local_os then
						SetupFly_game()
						StartNoClip_game()
						StartSystem_game()
					else
						if local_math then
							local_math:Disconnect()
							local_math = nil
						end
						StopNoClip_game()
						StopFly_game()
					end
				end
			})
		end
		local_searchpath()
		local local_cls = ((local_roblox:WaitForChild('Packages')):WaitForChild('Net')):WaitForChild('RF/WheelSpin.Roll')
		local local_popen = false
		local local_rename = .1
		task['spawn'](function()
			while task['wait'](local_rename) do
				if local_popen then
					pcall(function()
						local_cls:InvokeServer('Valentines', false)
					end)
				end
			end
		end);
		(local_length['Valt']:AddToggle('SpamSpin', {
			['Title'] = 'Auto Random';
			['Default'] = false
		})):OnChanged(function(local_os)
			local_popen = local_os
		end)
		local function local_rawnew()
			local local_os = {
				Vector3['new'](199.82, -2.59, 5.52),
				Vector3['new'](283.18, -2.59, .92),
				Vector3['new'](398.06, -2.59, 5.53);
				Vector3['new'](543.88, -2.59, 2.47);
				Vector3['new'](756.93, -2.59, 5.91);
				Vector3['new'](1074.11, -2.59, 1.92),
				Vector3['new'](1547.94, -2.59, 3.42);
				Vector3['new'](2249.15, -2.59, 2.36),
				Vector3['new'](2956.73, -2.59, 814905 + -814912),
				Vector3['new'](3319.73, -2.59, 34401 + -34405),
				Vector3['new'](3673.73, -2.59, 284777 + -284783),
				Vector3['new'](4004.73, -2.59, 479919 + -479920)
			}
			local local__G = game:GetService('Players')
			local local_hookfunction = game:GetService('RunService')
			local local_import = local__G['LocalPlayer']
			local local_read
			local local_j
			local local_double = false
			local local_bytecode = 123812 + -123112
			local local_wrap = 935933 + -935932
			local local_long = -287593 + 287793
			local local_size
			local local_number
			local local_seek
			local local_math
			local local_setvbuf = 882555 + -882553
			local local_tostring = 261288 - 261288
			local local_tonumber = false
			local function local_print(local_os)
				local_read = local_os
				local_j = local_os:WaitForChild('HumanoidRootPart')
			end
			local_import['CharacterAdded']:Connect(local_print)
			if local_import['Character'] then
				local_print(local_import['Character'])
			end
			local local_i = {}
			function StartNoClip_heart()
				if local_math then
					return
				end
				local_math = local_hookfunction['Stepped']:Connect(function()
					if local_read then
						for local_os, local__G in ipairs(local_read:GetDescendants()) do
							if local__G:IsA('BasePart') then
								if local_i[local__G] == nil then
									local_i[local__G] = local__G['CanCollide']
								end
								local__G['CanCollide'] = false
							end
						end
					end
				end)
			end
			function StopNoClip_heart()
				if local_math then
					local_math:Disconnect()
					local_math = nil
				end
				for local_os, local__G in pairs(local_i) do
					if local_os and local_os['Parent'] then
						local_os['CanCollide'] = local__G
					end
				end
				table['clear'](local_i)
			end
			local function local_string(local_os)
				if not local_os then
					return
				end
				if fireproximityprompt then
					fireproximityprompt(local_os)
				else
					local_os:InputHoldBegin()
					task['wait'](.1)
					local_os:InputHoldEnd()
				end
			end
			local function local_isWindows()
				if local_size then
					local_size:Destroy()
					local_size = nil
				end
				if local_number then
					local_number:Destroy()
					local_number = nil
				end
			end
			local function local_coroutine()
				if not local_j then
					return
				end
				local_isWindows()
				local local_os = Instance['new']('Attachment', local_j)
				local_size = Instance['new']('LinearVelocity')
				local_size['Attachment0'] = local_os
				local_size['MaxForce'] = math['huge']
				local_size['Parent'] = local_j
				local_number = Instance['new']('AlignOrientation')
				local_number['Attachment0'] = local_os
				local_number['MaxTorque'] = math['huge']
				local_number['Responsiveness'] = -922685 + 922710
				local_number['Parent'] = local_j
			end
			local function local_byte(local_os)
				if not local_os or not local_j or not local_size then
					return
				end
				local local__G = Vector3['new'](local_os['X'], local_os['Y'] + local_wrap, local_os['Z'])
				local local_hookfunction = local__G - local_j['Position']
				if local_hookfunction['Magnitude'] < -844917 - (-844922) then
					local_size['VectorVelocity'] = local_hookfunction * (791609 + -791604)
				else
					local_size['VectorVelocity'] = local_hookfunction['Unit'] * local_bytecode
				end
				local_number['CFrame'] = CFrame['lookAt'](local_j['Position'], local__G)
			end
			local function local_unsigned()
				local local__G, local_hookfunction = nil, math['huge']
				for local_os, local_import in ipairs(local_os) do
					local local_read = (local_j['Position'] - local_import)['Magnitude']
					if local_read < local_hookfunction then
						local_hookfunction = local_read
						local__G = local_import
					end
				end
				return local__G
			end
			local function local_new()
				local local_os
				local local__G = math['huge']
				local function local_hookfunction(local_hookfunction)
					if not local_hookfunction then
						return
					end
					for local_hookfunction, local_import in ipairs(local_hookfunction:GetDescendants()) do
						if local_import:IsA('TouchTransmitter') then
							local local_hookfunction = local_import['Parent']
							if local_hookfunction and local_hookfunction:IsA('BasePart') then
								local local_import = (local_j['Position'] - local_hookfunction['Position'])['Magnitude']
								if local_import < local__G then
									local__G = local_import
									local_os = local_hookfunction
								end
							end
						end
					end
				end
				local_hookfunction(workspace:FindFirstChild('ValentinesCoinParts'))
				local_hookfunction(workspace:FindFirstChild('CandyEventParts'))
				return local_os
			end
			local function local_tmpname()
				local local_os, local__G = nil, math['huge']
				for local_hookfunction, local_import in ipairs(workspace:GetChildren()) do
					if local_import:IsA('Model') and (local_import['Name']:lower()):find('wave') then
						local local_hookfunction = local_import:FindFirstChild('Hitbox', true)
						if local_hookfunction and local_hookfunction:IsA('BasePart') then
							local local_import = (local_j['Position'] - local_hookfunction['Position'])['Magnitude']
							if local_import < local__G then
								local__G = local_import
								local_os = local_hookfunction
							end
						end
					end
				end
				return local_os, local__G
			end
			local function local_loadfile(local_os)
				local_read = local_os
				local_j = local_os:WaitForChild('HumanoidRootPart')
				if local_double then
					task['wait'](.2)
					local_coroutine()
					StartNoClip_heart()
				end
			end
			local_import['CharacterAdded']:Connect(function(local_os)
				local_loadfile(local_os)
			end)
			if local_import['Character'] then
				local_loadfile(local_import['Character'])
			end
			local function local_signed()
				if local_seek then
					return
				end
				local_tostring = tick()
				local_seek = local_hookfunction['Heartbeat']:Connect(function()
					if not local_double or not local_j then
						return
					end
					if not local_read or not local_j or not local_j['Parent'] then
						return
					end
					if not local_tonumber and tick() - local_tostring >= local_setvbuf then
						local_tonumber = true
					end
					local local_os, local__G = local_tmpname()
					if local_os and local__G < local_long then
						local local_os = local_unsigned()
						if local_os then
							local_byte(local_os)
						end
						return
					end
					if local_tonumber then
						local local_os = Vector3['new'](93942 - 93603, -580207 - (-580210), 671605 + -671631)
						local_byte(local_os)
						if (local_j['Position'] - local_os)['Magnitude'] < -666357 + 666363 then
							local local_os = (((workspace:FindFirstChild('ValentinesMap')):FindFirstChild('CandyGramStation')):FindFirstChild('Main')):FindFirstChild('Prompts')
							if local_os then
								for local_os, local__G in ipairs(local_os:GetChildren()) do
									if local__G:IsA('ProximityPrompt') then
										local_string(local__G)
										break
									end
								end
							end
							local_tostring = tick()
							local_tonumber = false
						end
						return
					end
					local local_hookfunction = local_new()
					if local_hookfunction then
						local_byte(local_hookfunction['Position'])
					end
				end)
			end
			local_length['Valt']:AddToggle('AutoWaveEvadeTicket_heart', {
				['Title'] = 'Auto Farm Tim + Bán';
				['Description'] = 'Auto farm tim +  tự bán',
				['Default'] = false;
				['Callback'] = function(local_os)
					local_double = local_os
					if local_os then
						local_coroutine()
						StartNoClip_heart()
						local_signed()
					else
						if local_seek then
							local_seek:Disconnect()
							local_seek = nil
						end
						StopNoClip_heart()
						local_isWindows()
					end
				end
			})
		end
		local_rawnew()
		local_length['Main']:AddButton({
			['Title'] = 'Script Di Chuyển ',
			['Description'] = 'Bấm Để Xuất Script',
			['Callback'] = function()
				GUI()
			end
		})
		local_length['Main']:AddButton({
			['Title'] = 'Script Di Chuyển V2';
			['Description'] = 'Bấm Để Xuất Script',
			['Callback'] = function()
				GUI2()
			end
		})
		local local_collectgarbage = false
		local local_float
		local function local_error()
			for local_os, local__G in ipairs(workspace:GetDescendants()) do
				if local__G:IsA('ProximityPrompt') then
					local__G['HoldDuration'] = 727351 + -727351
				end
			end
		end
		local_length['Main']:AddToggle('InstantGrab', {
			['Title'] = 'Xóa thời gian giữ nút';
			['Default'] = false,
			['Callback'] = function(local_os)
				local_collectgarbage = local_os
				if local_os then
					local_error()
					local_float = workspace['DescendantAdded']:Connect(function(local_os)
						if local_collectgarbage and local_os:IsA('ProximityPrompt') then
							local_os['HoldDuration'] = -703606 - (-703606)
						end
					end)
				else
					if local_float then
						local_float:Disconnect()
						local_float = nil
					end
				end
			end
		})
		local local_index = 30369 + -30363
		local local_imports = false
		local local_package = {}
		local function local_class(local_os)
			local local__G = {}
			if not local_os then
				return nil
			end
			for local_os, local_hookfunction in ipairs(local_os:GetDescendants()) do
				if local_hookfunction:IsA('BasePart') then
					table['insert'](local__G, local_hookfunction)
				end
			end
			if #local__G > 857595 + -857595 then
				return local__G
			end
			return nil
		end
		local function local_count()
			local local_os = workspace:FindFirstChild('DefaultMap_SharedInstances')
			if local_os then
				local local__G = local_os:FindFirstChild('Floors')
				if local__G then
					for local_os, local__G in ipairs(local__G:GetDescendants()) do
						if local__G:IsA('BasePart') then
							local__G:Destroy()
						end
					end
				end
			end
			local local__G = workspace:FindFirstChild('ArcadeMap_SharedInstances')
			if local__G then
				local local_os = local__G:FindFirstChild('Floors')
				if local_os then
					for local_os, local__G in ipairs(local_os:GetDescendants()) do
						if local__G:IsA('BasePart') then
							local__G:Destroy()
						end
					end
				end
			end
			local local_hookfunction = workspace:FindFirstChild('ValentinesMap_SharedInstances')
			if local_hookfunction then
				local local_os = local_hookfunction:FindFirstChild('Floors')
				if local_os then
					for local_os, local__G in ipairs(local_os:GetDescendants()) do
						if local__G:IsA('BasePart') then
							local__G:Destroy()
						end
					end
				end
			end
			local local_import = workspace:FindFirstChild('DefaultMap')
			if local_import then
				local local_os = local_import:FindFirstChild('Spawners')
				if local_os then
					local local__G = local_class(local_os)
					if local__G and #local__G > -513712 - (-513712) then
						return local__G
					end
				end
			end
			local local_read = workspace:FindFirstChild('ValentinesMap')
			if local_read then
				local local_os = local_class(local_read:FindFirstChild('Spawners'))
				if local_os and #local_os > -63906 - (-63906) then
					return local_os
				end
			end
			local local_j = workspace:FindFirstChild('MarsMap')
			if local_j then
				local local_os = local_class(local_j:FindFirstChild('Spawners'))
				if local_os and #local_os > -788920 - (-788920) then
					return local_os
				end
			end
			local local_double = workspace:FindFirstChild('MoneyMap')
			if local_double then
				local local_os = local_double:FindFirstChild('DefaultStudioMap')
				if local_os then
					local local__G = local_class(local_os:FindFirstChild('Spawners'))
					if local__G and #local__G > 779704 - 779704 then
						return local__G
					end
				end
			end
			local local_length = workspace:FindFirstChild('MoneyMap_SharedInstances')
			if local_length then
				local local_os = local_length:FindFirstChild('Floors')
				if local_os then
					for local_os, local__G in ipairs(local_os:GetDescendants()) do
						if local__G:IsA('BasePart') then
							local__G:Destroy()
						end
					end
				end
			end
			local local_bytecode = workspace:FindFirstChild('ArcadeMap')
			if local_bytecode then
				local local_os = local_class(local_bytecode:FindFirstChild('Spawners'))
				if local_os and #local_os > -550321 - (-550321) then
					return local_os
				end
			end
			local local_wrap = workspace:FindFirstChild('Radioactive')
			if local_wrap then
				local local_os = local_class(local_wrap:FindFirstChild('OG'))
				if local_os and #local_os > 345835 + -345835 then
					return local_os
				end
			end
			return {}
		end
		local function local_setmetatable(local_os)
			for local__G, local_hookfunction in ipairs(local_count()) do
				if local_os then
					if not local_package[local_hookfunction] then
						local_package[local_hookfunction] = local_hookfunction['CFrame']
					end
					local_hookfunction['CFrame'] = local_package[local_hookfunction] * CFrame['new'](529392 + -529392, -local_index, 82531 + -82531)
				else
					if local_package[local_hookfunction] then
						local_hookfunction['CFrame'] = local_package[local_hookfunction]
					end
				end
			end
		end;
		(local_length['Main']:AddToggle('LowerFloors', {
			['Title'] = 'Hạ độ cao Sàn';
			['Default'] = false
		})):OnChanged(function(local_os)
			local_imports = local_os
			local_setmetatable(local_os)
		end)
		local function local_short()
			local local_os = {}
			local local__G = workspace:FindFirstChild('DefaultMap')
			local local_hookfunction = workspace:FindFirstChild('DefaultMap_SharedInstances')
			local_os['rightWalls'] = local__G and local__G:FindFirstChild('RightWalls')
			local_os['walls'] = local__G and local__G:FindFirstChild('Walls')
			local_os['gaps'] = local__G and local__G:FindFirstChild('Gaps')
			local_os['vipWalls'] = local_hookfunction and local_hookfunction:FindFirstChild('VIPWalls')
			local local_import = workspace:FindFirstChild('ArcadeMap')
			local local_read = workspace:FindFirstChild('ArcadeMap_SharedInstances')
			local_os['arcadeRightWalls'] = local_import and local_import:FindFirstChild('RightWalls')
			local_os['arcadeVIPWalls'] = local_read and local_read:FindFirstChild('VIPWalls')
			local_os['arcadeGaps'] = local_import and local_import:FindFirstChild('Gaps')
			local local_j = workspace:FindFirstChild('MarsMap')
			local local_double = workspace:FindFirstChild('MarsMap_SharedInstances')
			local_os['marsWalls'] = local_j and local_j:FindFirstChild('Walls')
			local_os['marsVIPWalls'] = local_double and local_double:FindFirstChild('VIPWalls')
			local_os['marsGaps'] = local_j and local_j:FindFirstChild('Gaps')
			local local_length = workspace:FindFirstChild('MoneyMap')
			local local_bytecode = workspace:FindFirstChild('MoneyMap_SharedInstances')
			local local_wrap = local_length and local_length:FindFirstChild('DefaultStudioMap')
			local_os['moneyRightWalls'] = local_wrap and local_wrap:FindFirstChild('RightWalls')
			local_os['moneyVIPWalls'] = local_bytecode and local_bytecode:FindFirstChild('VIPWalls')
			local_os['moneyGaps'] = local_length and local_length:FindFirstChild('Gaps')
			return local_os
		end
		local local_load = {}
		local local_rawget = {}
		local function local_parse(local_os)
			RemoveTouch(local_os['vipWalls'])
			RemoveTouch(local_os['arcadeVIPWalls'])
			RemoveTouch(local_os['marsVIPWalls'])
			RemoveTouch(local_os['moneyVIPWalls'])
		end
		local function local_create(local_os)
			if not local_os:IsA('BasePart') then
				return
			end
			if not local_load[local_os] then
				local_load[local_os] = local_os['CFrame']
			end
			local local__G = local_load[local_os]
			if local__G['Position']['Z'] < -698102 - (-698102) then
				local_os['CFrame'] = local__G * CFrame['new'](-984703 - (-984703), -492197 - (-492207), -83171 - (-83171))
			else
				local_os['CFrame'] = local__G * CFrame['new'](901052 - 901052, -943677 + 943667, 1029696 + -1029696)
			end
		end
		local function local_getmetatable(local_os)
			if not local_os:IsA('BasePart') then
				return
			end
			if not local_load[local_os] then
				local_load[local_os] = local_os['CFrame']
				local_rawget[local_os] = local_os['Size']
			end
			local_os['Size'] = Vector3['new'](local_rawget[local_os]['X'], local_rawget[local_os]['Y'] * (154725 + -154722), local_rawget[local_os]['Z'] * (366187 + -365187))
			local_os['CFrame'] = local_load[local_os] * CFrame['new'](244392 + -244391, 545329 + -545329, -58914 + 58914)
		end
		local function local_flush(local_os)
			if not local_os then
				return
			end
			for local_os, local__G in ipairs(local_os:GetDescendants()) do
				local_create(local__G)
			end
		end
		local function local_pcall(local_os)
			if not local_os then
				return
			end
			for local_os, local__G in ipairs(local_os:GetChildren()) do
				for local_os, local__G in ipairs(local__G:GetChildren()) do
					if local__G['Name'] == 'Mud' then
						local_getmetatable(local__G)
					end
				end
			end
		end
		local local_tmpfile = false
		local_length['Main']:AddToggle('RightWallToggle', {
			['Title'] = 'Mở Đường 2 Bên',
			['Default'] = false,
			['Callback'] = function(local_os)
				local_tmpfile = local_os
				if local_os then
					local local_os = local_short()
					local_parse(local_os)
					local_flush(local_os['rightWalls'])
					local_flush(local_os['walls'])
					local_flush(local_os['vipWalls'])
					local_pcall(local_os['gaps'])
					local_flush(local_os['arcadeRightWalls'])
					local_flush(local_os['arcadeVIPWalls'])
					local_pcall(local_os['arcadeGaps'])
					local_flush(local_os['marsWalls'])
					local_flush(local_os['marsVIPWalls'])
					local_pcall(local_os['marsGaps'])
					local_flush(local_os['moneyRightWalls'])
					local_flush(local_os['moneyVIPWalls'])
					local_pcall(local_os['moneyGaps'])
				else
					for local_os, local__G in pairs(local_load) do
						if local_os and local_os['Parent'] then
							local_os['CFrame'] = local__G
						end
					end
					for local_os, local__G in pairs(local_rawget) do
						if local_os and local_os['Parent'] then
							local_os['Size'] = local__G
						end
					end
				end
			end
		})
		local local_idx = local_xpcall['LocalPlayer']
		local local_packages = 648372 - 648244
		local local_data = 748587 - 748087
		local local_arr = -639924 + 639924.5
		local local_object = nil
		local function local_table()
			if local_idx then
				local_idx['CameraMaxZoomDistance'] = local_data
				local_idx['CameraMinZoomDistance'] = local_arr
			end
		end
		local function local_module()
			if local_idx then
				local_idx['CameraMaxZoomDistance'] = local_packages
				local_idx['CameraMinZoomDistance'] = local_arr
			end
		end
		local_object = local_length['Main']:AddToggle('UnlockCameraZoom', {
			['Title'] = 'Mở Khóa Camera Zoom';
			['Description'] = 'Zoom xa hơn giới hạn mặc định',
			['Default'] = false
		})
		local_object:OnChanged(function(local_os)
			if local_os then
				local_table()
			else
				local_module()
			end
		end)
		local_idx['CharacterAdded']:Connect(function()
			task['wait'](-519664 + 519664.5)
			if local_object['Value'] then
				local_table()
			end
		end)
		task['spawn'](function()
			task['wait'](-766392 + 766393)
			if local_object['Value'] then
				local_table()
			end
		end)
		local local_call = game:GetService('VirtualUser')
		local local_ipairs = local_xpcall['LocalPlayer']
		local local_setlocal = false
		local local_readline
		local local_obj = 1033728 + -1033728
		local function local_status()
			if local_readline then
				return
			end
			pcall(function()
				local_call:CaptureController()
			end)
			local_readline = local_wrap['Heartbeat']:Connect(function(local_os)
				if not local_setlocal then
					return
				end
				local_obj = local_obj + local_os
				if local_obj >= 839172 - 839162 then
					local_obj = -139236 + 139236
					pcall(function()
						local_call:Button2Down(Vector2['new'](-415853 + 415853, 811385 - 811385), workspace['CurrentCamera']['CFrame'])
						task['wait'](.1)
						local_call:Button2Up(Vector2['new'](854266 + -854266, -4192 + 4192), workspace['CurrentCamera']['CFrame'])
					end)
				end
			end)
		end
		local function local_getuservalue()
			if local_readline then
				local_readline:Disconnect()
				local_readline = nil
			end
		end;
		(local_length['Main']:AddToggle('AntiAFK', {
			['Title'] = 'Anti AFK';
			['Default'] = false
		})):OnChanged(function(local_os)
			local_setlocal = local_os
			if local_os then
				local_status()
			else
				local_getuservalue()
			end
		end)
		local local_setuservalue = false
		local function local_path()
			local local_os = local_idx['Character']
			if not local_os then
				return nil, nil, nil
			end
			local local__G = local_os:FindFirstChildOfClass('Humanoid')
			local local_hookfunction = local_os:FindFirstChild('HumanoidRootPart')
			return local_os, local__G, local_hookfunction
		end
		local function local_c()
			local local_os, local__G, local_hookfunction = local_path()
			if not local__G then
				return
			end
			local__G['MaxHealth'] = math['huge']
			local__G['Health'] = math['huge']
			HealthConnection = (local__G:GetPropertyChangedSignal('Health')):Connect(function()
				if local_setuservalue and local__G['Health'] < 160805 + 839195 then
					local__G['Health'] = 224103 + 775897
				end
			end)
			CharacterConnection = local_idx['CharacterAdded']:Connect(function(local_os)
				task['wait'](859387 + -859386)
				if not local_setuservalue then
					return
				end
				local local__G = local_os:FindFirstChildOfClass('Humanoid')
				if local__G then
					task['wait'](-944509 + 944509.5)
					local__G['MaxHealth'] = math['huge']
					local__G['Health'] = math['huge']
					if HealthConnection then
						HealthConnection:Disconnect()
					end
					HealthConnection = (local__G:GetPropertyChangedSignal('Health')):Connect(function()
						if local_setuservalue and local__G['Health'] < 2036352 - 1036352 then
							local__G['Health'] = -797049 + 1797049
						end
					end)
				end
			end)
		end
		local function local_lines()
			if HealthConnection then
				HealthConnection:Disconnect()
				HealthConnection = nil
			end
			if CharacterConnection then
				CharacterConnection:Disconnect()
				CharacterConnection = nil
			end
		end
		local_length['Player']:AddToggle('Battu', {
			['Title'] = 'Bất Tử 1 Mạng',
			['Default'] = false,
			['Callback'] = function(local_os)
				local_setuservalue = local_os
				if local_os then
					local_c()
				else
					local_lines()
				end
			end
		})
		local local_bool = -44675 - (-44705)
		local local_rawlen, local_hasnext = nil, nil
		local function local_upvaluejoin()
			local local_os = local_idx['Character'] or local_idx['CharacterAdded']:Wait()
			local_rawlen = local_os:WaitForChild('Humanoid')
			local_hasnext = local_os:WaitForChild('HumanoidRootPart')
		end
		local_upvaluejoin()
		local_idx['CharacterAdded']:Connect(local_upvaluejoin)
		local_length['Player']:AddSlider('SafeSpeedValue', {
			['Title'] = 'Tốc chạy';
			['Default'] = 675893 + -675877;
			['Min'] = -732215 + 732231,
			['Max'] = -979974 - (-980094);
			['Rounding'] = 894524 - 894524,
			['Callback'] = function(local_os)
				local_bool = local_os
			end
		})
		local_wrap['RenderStepped']:Connect(function(local_os)
			if not local_rawlen or not local_hasnext then
				return
			end
			local local__G = local_rawlen['MoveDirection']
			if local__G['Magnitude'] > 85027 + -85027 then
				local_hasnext['CFrame'] = local_hasnext['CFrame'] + (local__G * (local_bool - (-20705 + 20721))) * local_os
			end
		end)
		local local_const, local_close, local_readlines = game:GetService('Players'), game:GetService('RunService'), game:GetService('UserInputService')
		local local_array, local_loadstring = workspace['CurrentCamera'], local_const['LocalPlayer']
		local local_write, local_rawset = local_loadstring['Character'] or local_loadstring['CharacterAdded']:Wait(), nil
		local local_oldpath, local_game, local_program = {}, 771336 - 771320, -992259 - (-992319)
		local function local_export(local_os)
			local_write, local_rawset = local_os, local_os:WaitForChild('Humanoid')
			local_rawset['WalkSpeed'] = local_game
		end
		local_export(local_write)
		local_loadstring['CharacterAdded']:Connect(local_export)
		local function local_key(local_os)
			if local_oldpath[local_os] then
				local_oldpath[local_os]:Disconnect()
				local_oldpath[local_os] = nil
			end
		end
		local_length['Player']:AddToggle('InfJump', {
			['Title'] = 'Nhảy Liên Tục';
			['Default'] = false,
			['Callback'] = function(local_os)
				local_key('InfJump')
				if local_os then
					local_oldpath['InfJump'] = local_readlines['JumpRequest']:Connect(function()
						if local_rawset then
							local_rawset:ChangeState('Jumping')
						end
					end)
				end
			end
		})
		local_length['Player']:AddSlider('JumpPower', {
			['Title'] = 'Nhảy Cao';
			['Default'] = -954212 - (-954302),
			['Min'] = 162789 + -162739,
			['Max'] = -507056 + 507256;
			['Rounding'] = -964286 + 964287;
			['Callback'] = function(local_os)
				if local_rawset then
					local_rawset['UseJumpPower'] = true
					local_rawset['JumpPower'] = local_os
				end
			end
		})
		local_length['Player']:AddToggle('Fly', {
			['Title'] = 'Bật Fly',
			['Default'] = false,
			['Callback'] = function(local_os)
				if local_os then
					(loadstring(game:HttpGet('https://raw.githubusercontent.com/XNEOFF/FlyGuiV3/main/FlyGuiV3.txt')))()
				end
			end
		})
		local local_loadlib = workspace['CurrentCamera']
		local_length['Player']:AddSlider('CamFOV', {
			['Title'] = 'Độ rộng camera',
			['Default'] = -684853 + 684923,
			['Min'] = -500784 + 500854,
			['Max'] = 883707 + -883587,
			['Rounding'] = 1043328 - 1043328,
			['Callback'] = function(local_os)
				local_loadlib['FieldOfView'] = local_os
			end
		})
		local local_gfind = game:GetService('Players')
		local local_gsub = game:GetService('RunService')
		local local_factory = local_gfind['LocalPlayer']
		local local_directory = nil
		local local_require = false
		local local_dir = false
		local local_sethook = false
		local local_type = 566386 + -566382
		local local_void = math['rad'](-434029 + 434089)
		local local_newpath = -283561 + 283661
		local local_next = {}
		local function local_rand(local_os)
			table['insert'](local_next, local_os)
		end
		local function local_debug()
			for local_os, local__G in ipairs(local_next) do
				if local__G then
					local__G:Disconnect()
				end
			end
			table['clear'](local_next)
		end
		local local_io = {}
		local function local_resume()
			table['clear'](local_io)
			for local_os, local__G in ipairs(local_gfind:GetPlayers()) do
				if local__G ~= local_factory then
					table['insert'](local_io, local__G['Name'])
				end
			end
		end
		local_resume()
		local function local_assert()
			local_resume()
			if PlayerDropdown then
				PlayerDropdown:SetValues(local_io)
				if local_directory and not table['find'](local_io, local_directory) then
					local_directory = nil
					PlayerDropdown:SetValue(nil)
				end
			end
		end
		local_gfind['PlayerAdded']:Connect(local_assert)
		local_gfind['PlayerRemoving']:Connect(local_assert)
		local local_loaders = local_length['PVP']:AddDropdown('PlayerDropdown', {
			['Title'] = 'Chọn Player';
			['Values'] = local_io;
			['Multi'] = false;
			['Default'] = nil,
			['Callback'] = function(local_os)
				local_directory = local_os
			end
		})
		local_assert()
		local local_exports
		local_length['PVP']:AddToggle('FollowPlayer', {
			['Title'] = 'Bay Sau Player';
			['Default'] = false;
			['Callback'] = function(local_os)
				local_require = local_os
				if local_os then
					local_exports = local_gsub['Heartbeat']:Connect(function()
						if not local_directory then
							return
						end
						local local_os = local_gfind:FindFirstChild(local_directory)
						local local__G = local_factory['Character']
						if not local_os or not local__G then
							return
						end
						local local_hookfunction = local__G:FindFirstChild('HumanoidRootPart')
						local local_import = local_os['Character'] and local_os['Character']:FindFirstChild('HumanoidRootPart')
						if not local_hookfunction or not local_import then
							return
						end
						local local_read = local_import['CFrame'] * CFrame['new'](882811 - 882811, -250728 + 250728, local_type)
						local_hookfunction['CFrame'] = CFrame['new'](local_read['Position'], local_import['Position'])
					end)
					local_rand(local_exports)
				else
					if local_exports then
						local_exports:Disconnect()
					end
					local_exports = nil
				end
			end
		})
		local local_gmod
		local_length['PVP']:AddToggle('AimLock', {
			['Title'] = 'Aim Lock Player Gần';
			['Default'] = false;
			['Callback'] = function(local_os)
				if local_os then
					local_gmod = local_gsub['RenderStepped']:Connect(function()
						local local_os = local_factory['Character']
						local local__G = local_os and local_os:FindFirstChild('HumanoidRootPart')
						if not local_os or not local__G then
							return
						end
						local local_hookfunction = workspace['CurrentCamera']
						local local_import, local_read = nil, local_void
						for local_os, local_j in ipairs(local_gfind:GetPlayers()) do
							if local_j ~= local_factory and local_j['Character'] then
								local local_os = local_j['Character']:FindFirstChild('HumanoidRootPart')
								local local_double = local_j['Character']:FindFirstChildOfClass('Humanoid')
								if local_os and (local_double and local_double['Health'] > -572210 + 572210) then
									local local_j = (local_os['Position'] - local_hookfunction['CFrame']['Position'])['Unit']
									local local_double = math['acos'](local_j:Dot(local_hookfunction['CFrame']['LookVector']))
									local local_length = (local__G['Position'] - local_os['Position'])['Magnitude']
									if local_double < local_read and local_length <= local_newpath then
										local_import = local_os
										local_read = local_double
									end
								end
							end
						end
						if local_import then
							local local_os = local__G['Position']
							local local_hookfunction = local_import['Position']
							local local_read = (Vector3['new'](local_hookfunction['X'], local_os['Y'], local_hookfunction['Z']) - local_os)['Unit']
							local__G['CFrame'] = CFrame['new'](local_os, local_os + local_read)
						end
					end)
					local_rand(local_gmod)
				else
					if local_gmod then
						local_gmod:Disconnect()
					end
					local_gmod = nil
				end
			end
		})
		local local_gethook = game:GetService('Players')
		local local_delete = game:GetService('RunService')
		local local_loader = local_gethook['LocalPlayer']
		local local_onload = -685421 - (-685621)
		local local_getupvalue = Vector3['new'](-833766 - (-833786), 17569 + -17549, -780536 + 780556)
		local local_b = .2
		local local_remove = false
		local local_a = 736631 + -736631
		local local_hooks = {}
		local function local_traceback(local_os)
			return local_os and local_os:FindFirstChild('HumanoidRootPart')
		end
		local function local_yield(local_os)
			local local__G = local_os['Character']
			local local_hookfunction = local_traceback(local__G)
			if not local_hookfunction then
				return
			end
			if not local_hooks[local_hookfunction] then
				local_hooks[local_hookfunction] = local_hookfunction['Size']
			end
			local_hookfunction['Size'] = local_getupvalue
			local_hookfunction['Transparency'] = 451822 + -451821
			local_hookfunction['CanCollide'] = false
		end
		local function local_Factory(local_os)
			local local__G = local_os['Character']
			local local_hookfunction = local_traceback(local__G)
			if local_hookfunction and local_hooks[local_hookfunction] then
				local_hookfunction['Size'] = local_hooks[local_hookfunction]
				local_hooks[local_hookfunction] = nil
			end
		end
		local function local_dofile()
			for local_os, local__G in ipairs(local_gethook:GetPlayers()) do
				if local__G ~= local_loader then
					local_Factory(local__G)
				end
			end
		end
		local_delete['Heartbeat']:Connect(function(local_os)
			if not local_remove then
				return
			end
			local_a = local_a + local_os
			if local_a < local_b then
				return
			end
			local_a = 259944 + -259944
			local local__G = local_loader['Character']
			local local_hookfunction = local_traceback(local__G)
			if not local_hookfunction then
				return
			end
			for local_os, local__G in ipairs(local_gethook:GetPlayers()) do
				if local__G ~= local_loader and local__G['Character'] then
					local local_os = local_traceback(local__G['Character'])
					if local_os then
						local local_import = (local_hookfunction['Position'] - local_os['Position'])['Magnitude']
						if local_import <= local_onload then
							local_yield(local__G)
						else
							local_Factory(local__G)
						end
					end
				end
			end
		end)
		_G['EnableRealHitbox'] = function(local_os)
			local_remove = local_os
			if not local_os then
				local_dofile()
			end
		end
		local_length['PVP']:AddToggle('RealHitbox', {
			['Title'] = 'Hitbox Player',
			['Default'] = false,
			['Callback'] = function(local_os)
				_G['EnableRealHitbox'](local_os)
			end
		})
		local local_os__G = Vector3['new'](-217127 + 217177, -582194 + 582244, 78740 - 78690)
		local local__G__G = {}
		local function local_hookfunction__G(local_os)
			if not local_sethook then
				return
			end
			if not local_os:IsA('Tool') then
				return
			end
			local local__G = local_os:FindFirstChild('Hitbox', true)
			if local__G and local__G:IsA('BasePart') then
				if not local__G__G[local__G] then
					local__G__G[local__G] = local__G['Size']
				end
				local__G['Size'] = local__G__G[local__G] * local_os__G
				local__G['CanCollide'] = false
			end
		end
		local function local_import__G(local_os)
			local local__G = local_os:FindFirstChild('Hitbox', true)
			if local__G and local__G__G[local__G] then
				local__G['Size'] = local__G__G[local__G]
				local__G__G[local__G] = nil
			end
		end
		local function local_read__G(local_os)
			local_os['ChildAdded']:Connect(function(local_os)
				if local_os:IsA('Tool') then
					task['wait'](.05)
					local_hookfunction__G(local_os)
				end
			end)
			local_os['ChildRemoved']:Connect(function(local_os)
				if local_os:IsA('Tool') then
					local_import__G(local_os)
				end
			end)
		end
		if local_factory['Character'] then
			local_read__G(local_factory['Character'])
		end
		local_factory['CharacterAdded']:Connect(local_read__G);
		(local_length['PVP']:AddToggle('ToolHitboxResize', {
			['Title'] = 'Tăng Hitbox Gậy',
			['Default'] = false
		})):OnChanged(function(local_os)
			local_sethook = local_os
			local local__G = local_factory['Character']
			if not local__G then
				return
			end
			if local_os then
				for local_os, local__G in ipairs(local__G:GetChildren()) do
					if local__G:IsA('Tool') then
						local_hookfunction__G(local__G)
					end
				end
			else
				for local_os, local__G in ipairs(local__G:GetChildren()) do
					if local__G:IsA('Tool') then
						local_import__G(local__G)
					end
				end
			end
		end)
		local local_j__G = workspace:WaitForChild('Bases')
		local local_double__G = 891004 + -891003
		local local_length__G = {}
		local local_bytecode__G = {}
		local local_wrap__G = false
		local function local_long__G()
			local_length__G = {}
			local_bytecode__G = {}
			local local_os = local_j__G:GetChildren()
			table['sort'](local_os, function(local_os, local__G)
				return local_os['Name'] < local__G['Name']
			end)
			for local__G = -955006 + 955007, #local_os, 638836 + -638835 do
				local_length__G[local__G] = 'Base ' .. local__G
				local_bytecode__G[local__G] = local_os[local__G]['Name']
			end
		end
		local_long__G()
		local function local_size__G(local_os)
			local local__G = local_factory['Character']
			if not local__G then
				return
			end
			local local_hookfunction = local__G:FindFirstChild('HumanoidRootPart')
			if not local_hookfunction then
				return
			end
			local_hookfunction['CFrame'] = local_os['CFrame'] * CFrame['new'](-139940 - (-139940), 334700 - 334698, -698806 + 698806)
		end
		task['spawn'](function()
			while true do
				task['wait'](.15)
				if local_wrap__G then
					local local_os = local_bytecode__G[local_double__G]
					local local__G = local_os and local_j__G:FindFirstChild(local_os)
					if not local__G then
						task['wait'](-978878 + 978878.5)
					else
						local local_os = local__G:FindFirstChild('Slots')
						if not local_os then
							task['wait'](-530415.5 - (-530416))
						else
							local local__G = local_os:GetChildren()
							table['sort'](local__G, function(local_os, local__G)
								return local_os['Name'] < local__G['Name']
							end)
							for local_os = 199463 - 199462, #local__G, 139492 + -139491 do
								if not local_wrap__G then
									break
								end
								local local_hookfunction = local__G[local_os]:FindFirstChild('Collect')
								if local_hookfunction and local_hookfunction:IsA('BasePart') then
									local_size__G(local_hookfunction)
									task['wait'](.15)
								end
							end
						end
					end
				end
			end
		end);
		(local_length['Auto']:AddDropdown('SelectBase', {
			['Title'] = 'Chọn Base';
			['Values'] = local_length__G;
			['Default'] = local_length__G[-46752 - (-46753)]
		})):OnChanged(function(local_os)
			for local__G = -831738 + 831739, #local_length__G, -930941 + 930942 do
				if local_length__G[local__G] == local_os then
					local_double__G = local__G
					break
				end
			end
		end);
		(local_length['Auto']:AddToggle('LoopTeleportCollect', {
			['Title'] = 'Auto Nhặt Tiền',
			['Description'] = 'Teleport tới các ô tiền';
			['Default'] = false
		})):OnChanged(function(local_os)
			local_wrap__G = local_os
		end)
		local local_number__G = (game:GetService('ReplicatedStorage')):FindFirstChild('RemoteFunctions')
		local_length['Auto']:AddButton({
			['Title'] = 'Bán Tất Cả Trong Người';
			['Description'] = 'Bấm Vào Để Bán';
			['Callback'] = function()
				local_number__G['SellAll']:InvokeServer()
			end
		})
		local local_seek__G = game:GetService('ReplicatedStorage')
		local local_math__G = local_seek__G:FindFirstChild('RemoteFunctions')
		local local_setvbuf__G = local_seek__G:FindFirstChild('RemoteEvents')
		local local_getinfo__G
		local local_isLinux__G
		local local_tostring__G
		local local_getlocal__G
		local local_tonumber__G
		local local_print__G
		if local_setvbuf__G then
			local_getinfo__G = local_setvbuf__G:FindFirstChild('CollectMoney')
		end
		if local_math__G then
			local_isLinux__G = local_math__G:FindFirstChild('UpgradeSpeed')
			local_tostring__G = local_math__G:FindFirstChild('UpgradeCarry')
			local_getlocal__G = local_math__G:FindFirstChild('UpgradeBase')
			local_tonumber__G = local_math__G:FindFirstChild('Rebirth')
			local_print__G = local_math__G:FindFirstChild('SellAll')
		end
		local local_i__G = false
		local local_string__G = false
		local local_isWindows__G = false
		local local_coroutine__G = false
		local local_byte__G = false
		local_length['Up']:AddSection('Auto Nâng Cấp')
		local_length['Up']:AddToggle('AutoUpgradeSpeed', {
			['Title'] = 'Auto Nâng Tốc Chạy';
			['Default'] = false;
			['Callback'] = function(local_os)
				local_i__G = local_os
			end
		})
		local_length['Up']:AddToggle('AutoUpgradeCarry', {
			['Title'] = 'Auto Nâng Sức Mạnh';
			['Default'] = false,
			['Callback'] = function(local_os)
				local_string__G = local_os
			end
		})
		local_length['Up']:AddToggle('AutoUpgradeBase', {
			['Title'] = 'Auto Nâng Cấp Nhà';
			['Default'] = false,
			['Callback'] = function(local_os)
				local_isWindows__G = local_os
			end
		})
		local_length['Up']:AddToggle('AutoRebirth', {
			['Title'] = 'Auto Rebirth';
			['Default'] = false,
			['Callback'] = function(local_os)
				local_coroutine__G = local_os
			end
		})
		local_length['Up']:AddToggle('AutoSellAll', {
			['Title'] = 'Auto Sell Tất Cả';
			['Default'] = false,
			['Callback'] = function(local_os)
				local_byte__G = local_os
			end
		})
		local_length['Up']:AddSection('Nâng Cấp 1 Lần')
		local_length['Up']:AddButton({
			['Title'] = 'Nâng 1 Tốc Chạy',
			['Callback'] = function()
				if local_isLinux__G then
					local_isLinux__G:InvokeServer(-863099 + 863100)
				end
			end
		})
		local_length['Up']:AddButton({
			['Title'] = 'Nâng 1 Sức Mạnh',
			['Callback'] = function()
				if local_tostring__G then
					local_tostring__G:InvokeServer(795578 - 795577)
				end
			end
		})
		local_length['Up']:AddButton({
			['Title'] = 'Nâng 1 Cấp Nhà';
			['Callback'] = function()
				if local_getlocal__G then
					local_getlocal__G:InvokeServer(829499 - 829498)
				end
			end
		})
		local_length['Up']:AddButton({
			['Title'] = 'Rebirth 1 Lần',
			['Callback'] = function()
				if local_tonumber__G then
					local_tonumber__G:InvokeServer(-137123 - (-137124))
				end
			end
		})
		local_length['Up']:AddButton({
			['Title'] = 'Sell Tất Cả 1 Lần';
			['Callback'] = function()
				if local_print__G then
					local_print__G:InvokeServer(-71201 - (-71202))
				end
			end
		})
		task['spawn'](function()
			while task['wait'](.1) do
				if local_i__G and local_isLinux__G then
					pcall(function()
						local_isLinux__G:InvokeServer(-888572 + 888573)
					end)
				end
				if local_string__G and local_tostring__G then
					pcall(function()
						local_tostring__G:InvokeServer(-116068 + 116069)
					end)
				end
				if local_isWindows__G and local_getlocal__G then
					pcall(function()
						local_getlocal__G:InvokeServer(-926525 + 926526)
					end)
				end
				if local_coroutine__G and local_tonumber__G then
					pcall(function()
						local_tonumber__G:InvokeServer(-995006 - (-995007))
					end)
				end
				if local_byte__G and local_print__G then
					pcall(function()
						local_print__G:InvokeServer(-49313 - (-49314))
					end)
				end
			end
		end)
		local local_unsigned__G = game:GetService('Players')
		local local_new__G = local_unsigned__G['LocalPlayer']
		local local_tmpname__G = game:GetService('Stats')
		local local_loadfile__G = game:GetService('RunService')
		local local_signed__G = game:GetService('HttpService')
		local local_apply__G = game:GetService('TeleportService')
		local local_m__G = game['PlaceId']
		local local_raise__G = game['JobId']
		local local_open__G = ''
		local local_code__G = {}
		local local_xpcall__G = local_length['Server']:AddParagraph({
			['Title'] = 'Server Status',
			['Content'] = 'Loading data...'
		})
		local_length['Server']:AddButton({
			['Title'] = 'Copy JobId';
			['Description'] = 'JobId:  ' .. local_raise__G,
			['Callback'] = function()
				setclipboard(local_raise__G)
				local_hookfunction:Notify({
					['Title'] = 'Copied!';
					['Content'] = 'Success Copy JobId',
					['Duration'] = 877246 - 877243
				})
			end
		})
		local local_upvalueid__G = ''
		local_length['Server']:AddInput('Input', {
			['Title'] = 'Nhập JobId',
			['Placeholder'] = 'ghi vào đây';
			['Default'] = '';
			['Callback'] = function(local_os)
				local_upvalueid__G = local_os
			end
		})
		local_length['Server']:AddButton({
			['Title'] = 'Join JobId';
			['Description'] = 'Teleport đến server bạn muốn';
			['Callback'] = function()
				if local_upvalueid__G and local_upvalueid__G ~= '' then
					local local_os, local__G = pcall(function()
						local_apply__G:TeleportToPlaceInstance(local_m__G, local_upvalueid__G, local_new__G)
					end)
					if local_os then
						local_hookfunction:Notify({
							['Title'] = 'Teleporting...',
							['Content'] = 'Joining JobId: ' .. local_upvalueid__G,
							['Duration'] = -222947 - (-222951)
						})
					else
						local_hookfunction:Notify({
							['Title'] = 'Error',
							['Content'] = 'không thể join JobId: ' .. tostring(local__G),
							['Duration'] = 474543 + -474539
						})
					end
				else
					local_hookfunction:Notify({
						['Title'] = 'Error',
						['Content'] = 'Please type JobId to join',
						['Duration'] = 51301 - 51298
					})
				end
			end
		})
		local_length['Server']:AddButton({
			['Title'] = 'Rejoin';
			['Description'] = 'Vào lại server',
			['Callback'] = function()
				local local_os, local__G = pcall(function()
					local_apply__G:TeleportToPlaceInstance(local_m__G, local_raise__G, local_new__G)
				end)
				if local_os then
					local_hookfunction:Notify({
						['Title'] = 'Rejoining...';
						['Duration'] = -503724 - (-503728)
					})
				else
					local_hookfunction:Notify({
						['Title'] = 'Error';
						['Content'] = 'Cant rejoin: ' .. tostring(local__G);
						['Duration'] = -475627 - (-475631)
					})
				end
			end
		})
		local function local_select__G()
			local local_os = workspace:GetServerTimeNow()
			local local__G = math['floor'](local_os / (-342127 - (-342187)))
			local local_hookfunction = math['floor'](local_os % (974906 - 974846))
			return string['format']('%2d:%2d', local__G, local_hookfunction)
		end
		task['spawn'](function()
			while task['wait'](-2399 - (-2400)) do
				local local_os = #local_unsigned__G:GetPlayers()
				local_xpcall__G:SetDesc(' | Thông Tin Server ' .. (' | Người: ' .. (local_os .. (' ' .. (' | JobId: ' .. (local_raise__G .. (' ' .. (' | Thời Gian: ' .. (local_select__G() .. (' ' .. (' | PlaceId: ' .. local_m__G)))))))))))
			end
		end)
		local function local_setupvalue__G()
			local local_os, local__G = pcall(function()
				return local_signed__G:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. (local_m__G .. ('/servers/Public?sortOrder=Asc&limit=100&cursor=' .. (local_open__G or '')))))
			end)
			if local_os and (local__G and local__G['data']) then
				local local_os = nil
				local local_import = math['huge']
				for local__G, local_hookfunction in ipairs(local__G['data']) do
					if local_hookfunction['playing'] < local_hookfunction['maxPlayers'] and (local_hookfunction['id'] ~= local_raise__G and not local_code__G[local_hookfunction['id']]) then
						if local_hookfunction['playing'] < local_import then
							local_import = local_hookfunction['playing']
							local_os = local_hookfunction
						end
					end
				end
				if local_os then
					local_code__G[local_os['id']] = true
					local_hookfunction:Notify({
						['Title'] = 'Hop Server',
						['Content'] = 'Đang join ' .. (local_os['playing'] .. ' players');
						['Duration'] = -955833 - (-955838)
					})
					task['wait'](-535665 + 535666)
					local_apply__G:TeleportToPlaceInstance(local_m__G, local_os['id'], local_new__G)
					return
				end
				local_open__G = local__G['nextPageCursor'] or ''
				if local_open__G ~= '' then
					local_setupvalue__G()
				else
					local_hookfunction:Notify({
						['Title'] = 'No Servers';
						['Content'] = 'Khum tìm thấy';
						['Duration'] = 467506 - 467502
					})
				end
			else
				local_hookfunction:Notify({
					['Title'] = 'Error';
					['Content'] = 'Tui không thể lấy dữ liệu huhu';
					['Duration'] = 954818 - 954814
				})
			end
		end
		local_length['Server']:AddButton({
			['Title'] = 'Hop Server Ít Người',
			['Description'] = 'Nhấn vào để hop server ít người';
			['Callback'] = function()
				local_open__G = ''
				local_code__G = {}
				local_setupvalue__G()
			end
		})
		local local_iterator__G = game:GetService('Players')
		local local_gmatch__G = game:GetService('RunService')
		local local_int__G = local_iterator__G['LocalPlayer']
		local local_value__G = false
		local local_char__G = .2
		local function local_include__G()
			local local_os = local_int__G['Character'] or local_int__G['CharacterAdded']:Wait()
			return local_os:WaitForChild('HumanoidRootPart')
		end
		local function local_roblox__G()
			local local_os = {}
			local local__G = workspace:FindFirstChild('MoneyMap_SharedInstances')
			if not local__G then
				return local_os
			end
			for local_hookfunction = 952255 - 952254, 613683 + -613680, -427820 - (-427821) do
				local local_import = local__G:FindFirstChild('MoneyObby' .. (local_hookfunction .. 'End'))
				if local_import and local_import:IsA('BasePart') then
					table['insert'](local_os, local_import)
				end
			end
			return local_os
		end
		task['spawn'](function()
			while true do
				if local_value__G then
					local local_os = local_include__G()
					local local__G = local_roblox__G()
					for local__G, local_hookfunction in ipairs(local__G) do
						if not local_value__G then
							break
						end
						local_os['CFrame'] = local_hookfunction['CFrame'] + Vector3['new'](689525 + -689525, 874107 - 874107, 755831 + -755831)
						task['wait'](local_char__G)
					end
				end
				task['wait'](.2)
			end
		end);
		(local_length['Money']:AddToggle('AutoTPMoneyObby', {
			['Title'] = 'Auto Vượt Thử Thách',
			['Default'] = false
		})):OnChanged(function(local_os)
			local_value__G = local_os
		end)
		local local_increment__G = game:GetService('Workspace')
		local local_rawequal__G = false
		local local_randomseed__G
		local function local_searchpath__G(local_os)
			if not local_os:IsA('BasePart') then
				return false
			end
			if string['find'](string['lower'](local_os['Name']), 'lava') then
				return true
			end
			if local_os['Material'] == Enum['Material']['Neon'] and (local_os['BrickColor'] == BrickColor['new']('Bright orange') or local_os['BrickColor'] == BrickColor['new']('Really red')) then
				return true
			end
			return false
		end
		local function local_cls__G()
			for local_os, local__G in ipairs(local_increment__G:GetDescendants()) do
				if local_searchpath__G(local__G) then
					local__G:Destroy()
				end
			end
		end
		local_length['Money']:AddToggle('RemoveLava', {
			['Title'] = 'Xóa tất cả laser';
			['Default'] = false;
			['Callback'] = function(local_os)
				local_rawequal__G = local_os
				if local_os then
					local_cls__G()
					local_randomseed__G = local_increment__G['DescendantAdded']:Connect(function(local_os)
						if local_rawequal__G and local_searchpath__G(local_os) then
							task['wait']()
							if local_os and local_os['Parent'] then
								local_os:Destroy()
							end
						end
					end)
				else
					if local_randomseed__G then
						local_randomseed__G:Disconnect()
						local_randomseed__G = nil
					end
				end
			end
		})
		local local_popen__G = false
		local local_rename__G = {
			[-137828 + 137829] = 'Money';
			[-922301 + 922303] = false
		}
		local_length['Money']:AddToggle('SpamWheelSpin', {
			['Title'] = 'Auto Randmon',
			['Default'] = false,
			['Callback'] = function(local_os)
				local_popen__G = local_os
				if local_os then
					task['spawn'](function()
						while local_popen__G do
							pcall(function()
								((game:GetService('ReplicatedStorage'))['Packages']['Net']:FindFirstChild('RF/WheelSpin.Roll')):InvokeServer(unpack(local_rename__G))
							end)
							task['wait'](.1)
						end
					end)
				end
			end
		})
		local function local_rawnew__G()
			local local_os = {
				Vector3['new'](199.82, -2.59, 5.52);
				Vector3['new'](283.18, -2.59, .92),
				Vector3['new'](398.06, -2.59, 5.53),
				Vector3['new'](543.88, -2.59, 2.47),
				Vector3['new'](756.93, -2.59, 5.91),
				Vector3['new'](1074.11, -2.59, 1.92),
				Vector3['new'](1547.94, -2.59, 3.42);
				Vector3['new'](2249.15, -2.59, 2.36);
				Vector3['new'](2956.73, -2.59, 571442 + -571449),
				Vector3['new'](3319.73, -2.59, 301861 - 301865);
				Vector3['new'](3673.73, -2.59, -245294 - (-245288));
				Vector3['new'](4004.73, -2.59, 671093 + -671094)
			}
			local local__G = game:GetService('Players')
			local local_hookfunction = game:GetService('RunService')
			local local_import = local__G['LocalPlayer']
			local local_read
			local local_j
			local local_double = false
			local local_bytecode = -595638 - (-596338)
			local local_wrap = -740727 + 740728
			local local_long = 833786 + -833586
			local local_size = 914877 - 914876
			local local_number
			local local_seek
			local local_math
			local local_setvbuf
			local function local_tostring(local_os)
				local_read = local_os
				local_j = local_read:WaitForChild('HumanoidRootPart')
				if local_double then
					task['wait'](.3)
					SetupFly_money()
					StartNoClip_money()
				end
			end
			local_import['CharacterAdded']:Connect(local_tostring)
			if local_import['Character'] then
				local_tostring(local_import['Character'])
			end
			function StartNoClip_money()
				if local_setvbuf then
					return
				end
				local_setvbuf = local_hookfunction['Stepped']:Connect(function()
					if local_read then
						for local_os, local__G in ipairs(local_read:GetDescendants()) do
							if local__G:IsA('BasePart') then
								local__G['CanCollide'] = false
							end
						end
					end
				end)
			end
			function StopNoClip_money()
				if local_setvbuf then
					local_setvbuf:Disconnect()
					local_setvbuf = nil
				end
			end
			function StopFly_money()
				if local_number then
					local_number:Destroy()
					local_number = nil
				end
				if local_seek then
					local_seek:Destroy()
					local_seek = nil
				end
			end
			function SetupFly_money()
				if not local_j then
					return
				end
				StopFly_money()
				local local_os = Instance['new']('Attachment', local_j)
				local_number = Instance['new']('LinearVelocity')
				local_number['Attachment0'] = local_os
				local_number['MaxForce'] = math['huge']
				local_number['VectorVelocity'] = Vector3['zero']
				local_number['Parent'] = local_j
				local_seek = Instance['new']('AlignOrientation')
				local_seek['Attachment0'] = local_os
				local_seek['MaxTorque'] = math['huge']
				local_seek['Responsiveness'] = 550346 - 550321
				local_seek['Parent'] = local_j
			end
			local function local_tonumber(local_os)
				if not local_os or not local_j or not local_number then
					return
				end
				local local__G = Vector3['new'](local_os['X'], local_os['Y'] + local_wrap, local_os['Z'])
				local local_hookfunction = local__G - local_j['Position']
				local local_import = local_hookfunction['Magnitude']
				if local_import < -142052 + 142057 then
					local_number['VectorVelocity'] = local_hookfunction * (-376684 + 376689)
					return
				end
				local_number['VectorVelocity'] = local_hookfunction['Unit'] * local_bytecode
				local_seek['CFrame'] = CFrame['lookAt'](local_j['Position'], local__G)
			end
			local function local_print()
				local local__G, local_hookfunction = nil, math['huge']
				for local_os, local_import in ipairs(local_os) do
					local local_read = (local_j['Position'] - local_import)['Magnitude']
					if local_read < local_hookfunction then
						local_hookfunction = local_read
						local__G = local_import
					end
				end
				return local__G
			end
			local function local_i()
				local local_os
				local local__G = math['huge']
				local function local_hookfunction(local_hookfunction)
					if not local_hookfunction then
						return
					end
					for local_hookfunction, local_import in ipairs(local_hookfunction:GetDescendants()) do
						if local_import:IsA('TouchTransmitter') then
							local local_hookfunction = local_import['Parent']
							if local_hookfunction and local_hookfunction:IsA('BasePart') then
								local local_import = (local_j['Position'] - local_hookfunction['Position'])['Magnitude']
								if local_import < local__G then
									local__G = local_import
									local_os = local_hookfunction
								end
							end
						end
					end
				end
				local_hookfunction(workspace:FindFirstChild('MoneyEventParts'))
				return local_os
			end
			local function local_string()
				local local_os, local__G = nil, math['huge']
				for local_hookfunction, local_import in ipairs(workspace:GetChildren()) do
					if local_import:IsA('Model') and (local_import['Name']:lower()):find('wave') then
						local local_hookfunction = local_import:FindFirstChild('Hitbox', true)
						if local_hookfunction and local_hookfunction:IsA('BasePart') then
							local local_import = (local_j['Position'] - local_hookfunction['Position'])['Magnitude']
							if local_import < local__G then
								local__G = local_import
								local_os = local_hookfunction
							end
						end
					end
				end
				return local_os, local__G
			end
			function StartSystem_money()
				if local_math then
					return
				end
				local_math = local_hookfunction['Heartbeat']:Connect(function()
					if not local_double then
						return
					end
					if not local_read or not local_j or not local_j['Parent'] then
						return
					end
					local local_os, local__G = local_string()
					if local_os and local__G < local_long then
						local local_os = local_print()
						if local_os then
							local local__G = (local_j['Position'] - local_os)['Magnitude']
							if local__G > local_size then
								local_tonumber(local_os)
							else
								if local_number then
									local_number['VectorVelocity'] = Vector3['zero']
								end
							end
						end
					else
						local local_os = local_i()
						if local_os then
							local_tonumber(local_os['Position'])
						end
					end
				end)
			end
			local_length['Money']:AddToggle('AutoWaveEvadeTicket_money', {
				['Title'] = 'Auto Farm Vàng';
				['Description'] = 'Auto né sóng + farm vàng';
				['Default'] = false;
				['Callback'] = function(local_os)
					local_double = local_os
					if local_os then
						SetupFly_money()
						StartNoClip_money()
						StartSystem_money()
					else
						if local_math then
							local_math:Disconnect()
							local_math = nil
						end
						StopNoClip_money()
						StopFly_money()
					end
				end
			})
		end
		local_rawnew__G()
	end
