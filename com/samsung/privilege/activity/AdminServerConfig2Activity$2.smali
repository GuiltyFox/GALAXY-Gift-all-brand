.class Lcom/samsung/privilege/activity/AdminServerConfig2Activity$2;
.super Ljava/lang/Object;
.source "AdminServerConfig2Activity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->doUseThisSetting(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/AdminServerConfig2Activity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/AdminServerConfig2Activity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/AdminServerConfig2Activity;

    .prologue
    .line 125
    iput-object p1, p0, Lcom/samsung/privilege/activity/AdminServerConfig2Activity$2;->this$0:Lcom/samsung/privilege/activity/AdminServerConfig2Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "p_dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 127
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 129
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminServerConfig2Activity$2;->this$0:Lcom/samsung/privilege/activity/AdminServerConfig2Activity;

    const v1, 0x7f1001ce

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    .line 130
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminServerConfig2Activity$2;->this$0:Lcom/samsung/privilege/activity/AdminServerConfig2Activity;

    const v1, 0x7f1001cf

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->API_URL_BZBS_BLOB:Ljava/lang/String;

    .line 131
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminServerConfig2Activity$2;->this$0:Lcom/samsung/privilege/activity/AdminServerConfig2Activity;

    const v1, 0x7f1001d0

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->WEB_URL_BUZZEBEES:Ljava/lang/String;

    .line 132
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminServerConfig2Activity$2;->this$0:Lcom/samsung/privilege/activity/AdminServerConfig2Activity;

    const v1, 0x7f1001d1

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->API_URL_WALLET:Ljava/lang/String;

    .line 133
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminServerConfig2Activity$2;->this$0:Lcom/samsung/privilege/activity/AdminServerConfig2Activity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminServerConfig2Activity$2;->this$0:Lcom/samsung/privilege/activity/AdminServerConfig2Activity;

    const v2, 0x7f1001d2

    invoke-virtual {v0, v2}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/bzbs/data/UserLogin;->SetUserCarrier(Landroid/content/Context;Ljava/lang/String;)Z

    .line 138
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminServerConfig2Activity$2;->this$0:Lcom/samsung/privilege/activity/AdminServerConfig2Activity;

    const v1, 0x7f1001d3

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->SPONSOR_ID_THAI:Ljava/lang/String;

    .line 139
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminServerConfig2Activity$2;->this$0:Lcom/samsung/privilege/activity/AdminServerConfig2Activity;

    const v1, 0x7f1001d4

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->SPONSOR_ID_LAOS:Ljava/lang/String;

    .line 141
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminServerConfig2Activity$2;->this$0:Lcom/samsung/privilege/activity/AdminServerConfig2Activity;

    const v1, 0x7f1001d5

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->SPONSOR_ID_MYAN:Ljava/lang/String;

    .line 142
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminServerConfig2Activity$2;->this$0:Lcom/samsung/privilege/activity/AdminServerConfig2Activity;

    const v1, 0x7f1001d6

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->NOTIFICATION_ID_THAI:Ljava/lang/String;

    .line 143
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminServerConfig2Activity$2;->this$0:Lcom/samsung/privilege/activity/AdminServerConfig2Activity;

    const v1, 0x7f1001d7

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->NOTIFICATION_ID_LAOS:Ljava/lang/String;

    .line 145
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminServerConfig2Activity$2;->this$0:Lcom/samsung/privilege/activity/AdminServerConfig2Activity;

    const v1, 0x7f1001d8

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->NOTIFICATION_ID_MYAN:Ljava/lang/String;

    .line 147
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminServerConfig2Activity$2;->this$0:Lcom/samsung/privilege/activity/AdminServerConfig2Activity;

    const v1, 0x7f1001d9

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->GA_TRACKING_ID_THAI:Ljava/lang/String;

    .line 148
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminServerConfig2Activity$2;->this$0:Lcom/samsung/privilege/activity/AdminServerConfig2Activity;

    const v1, 0x7f1001da

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->GA_TRACKING_ID_LAOS:Ljava/lang/String;

    .line 150
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminServerConfig2Activity$2;->this$0:Lcom/samsung/privilege/activity/AdminServerConfig2Activity;

    const v1, 0x7f1001db

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/bzbs/data/AppSetting;->GA_TRACKING_ID_MYAN:Ljava/lang/String;

    .line 155
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminServerConfig2Activity$2;->this$0:Lcom/samsung/privilege/activity/AdminServerConfig2Activity;

    # invokes: Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->LogoutAndGotoLogin()V
    invoke-static {v0}, Lcom/samsung/privilege/activity/AdminServerConfig2Activity;->access$000(Lcom/samsung/privilege/activity/AdminServerConfig2Activity;)V

    .line 156
    return-void
.end method
