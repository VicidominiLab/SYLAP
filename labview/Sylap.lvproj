<?xml version='1.0' encoding='UTF-8'?>
<Project Type="Project" LVVersion="20008000">
	<Item Name="My Computer" Type="My Computer">
		<Property Name="server.app.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.control.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="server.tcp.enabled" Type="Bool">false</Property>
		<Property Name="server.tcp.port" Type="Int">0</Property>
		<Property Name="server.tcp.serviceName" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.tcp.serviceName.default" Type="Str">My Computer/VI Server</Property>
		<Property Name="server.vi.callsEnabled" Type="Bool">true</Property>
		<Property Name="server.vi.propertiesEnabled" Type="Bool">true</Property>
		<Property Name="specify.custom.address" Type="Bool">false</Property>
		<Item Name="SylapExample.vi" Type="VI" URL="../SylapExample.vi"/>
		<Item Name="Dependencies" Type="Dependencies">
			<Item Name="vi.lib" Type="Folder">
				<Item Name="VISA Configure Serial Port" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port"/>
				<Item Name="VISA Configure Serial Port (Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Instr).vi"/>
				<Item Name="VISA Configure Serial Port (Serial Instr).vi" Type="VI" URL="/&lt;vilib&gt;/Instr/_visa.llb/VISA Configure Serial Port (Serial Instr).vi"/>
			</Item>
			<Item Name="Init_Sylap.vi" Type="VI" URL="../SylapLib/Init_Sylap.vi"/>
			<Item Name="Set3RegsLowLevel_Sylap.vi" Type="VI" URL="../SylapLib/Set3RegsLowLevel_Sylap.vi"/>
			<Item Name="SetRegister_Sylap.vi" Type="VI" URL="../SylapLib/SetRegister_Sylap.vi"/>
			<Item Name="TotalOffset_in_ps_Sylap.vi" Type="VI" URL="../SylapLib/TotalOffset_in_ps_Sylap.vi"/>
		</Item>
		<Item Name="Build Specifications" Type="Build"/>
	</Item>
</Project>
