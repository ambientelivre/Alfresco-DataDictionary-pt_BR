<#assign inviterPersonRef=args["inviterPersonRef"]/>
<#assign inviterPerson=companyhome.nodeByReference[inviterPersonRef]/>
<#assign inviteePersonRef=args["inviteePersonRef"]/>
<#assign inviteePerson=companyhome.nodeByReference[inviteePersonRef]/>

Olá ${inviteePerson.properties["cm:firstName"]!""},

Você foi convidado por ${inviterPerson.properties["cm:firstName"]!""} ${inviterPerson.properties["cm:lastName"]!""} para participar do site '${args["siteName"]}'.

Seu papel no site será ${args["inviteeSiteRole"]}.

Para aceitar este convite, clique no link abaixo.

${args["acceptLink"]}

<#if args["inviteeGenPassword"]?exists>
e digite as informações a seguir:

Usuário: ${args["inviteeUserName"]}
Senha: ${args["inviteeGenPassword"]}

Nós recomendamos fortemente que você altere a sua senha quando fizer o login pela primeira vez.

</#if>
Se você não quiser participar do site, clique no link abaixo:

${args["rejectLink"]}

Sinceramente,
Equipe Alfresco Share