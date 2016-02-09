.class Lcom/samsung/privilege/activity/AdminServerConfigActivity$3;
.super Ljava/lang/Object;
.source "AdminServerConfigActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/AdminServerConfigActivity;->doUseStaging(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/AdminServerConfigActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/AdminServerConfigActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/AdminServerConfigActivity$3;->this$0:Lcom/samsung/privilege/activity/AdminServerConfigActivity;

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 6
    .param p1, "p_dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 90
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 92
    const-string v0, "APP"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Swap server from <font color=blue>{"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}</font> to <font color=green>{"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/AdminServerConfigActivity$3;->this$0:Lcom/samsung/privilege/activity/AdminServerConfigActivity;

    # getter for: Lcom/samsung/privilege/activity/AdminServerConfigActivity;->etStaging:Landroid/widget/EditText;
    invoke-static {v2}, Lcom/samsung/privilege/activity/AdminServerConfigActivity;->access$2(Lcom/samsung/privilege/activity/AdminServerConfigActivity;)Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-interface {v2}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "}</font>.<br>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/privilege/activity/AdminServerConfigActivity$3;->this$0:Lcom/samsung/privilege/activity/AdminServerConfigActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/AdminServerConfigActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/AppSetting;->LOG(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    .line 93
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminServerConfigActivity$3;->this$0:Lcom/samsung/privilege/activity/AdminServerConfigActivity;

    # getter for: Lcom/samsung/privilege/activity/AdminServerConfigActivity;->etStaging:Landroid/widget/EditText;
    invoke-static {v0}, Lcom/samsung/privilege/activity/AdminServerConfigActivity;->access$2(Lcom/samsung/privilege/activity/AdminServerConfigActivity;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-interface {v0}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/privilege/AppSetting;->API_URL_BUZZEBEES:Ljava/lang/String;

    .line 95
    iget-object v0, p0, Lcom/samsung/privilege/activity/AdminServerConfigActivity$3;->this$0:Lcom/samsung/privilege/activity/AdminServerConfigActivity;

    # invokes: Lcom/samsung/privilege/activity/AdminServerConfigActivity;->LogoutAndGotoLogin()V
    invoke-static {v0}, Lcom/samsung/privilege/activity/AdminServerConfigActivity;->access$1(Lcom/samsung/privilege/activity/AdminServerConfigActivity;)V

    .line 96
    return-void
.end method
