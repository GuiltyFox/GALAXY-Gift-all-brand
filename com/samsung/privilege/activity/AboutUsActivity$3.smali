.class Lcom/samsung/privilege/activity/AboutUsActivity$3;
.super Ljava/lang/Object;
.source "AboutUsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/AboutUsActivity;->doAdminCampaign(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/AboutUsActivity;

.field final synthetic val$input:Landroid/widget/EditText;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/AboutUsActivity;Landroid/widget/EditText;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/AboutUsActivity;

    .prologue
    .line 198
    iput-object p1, p0, Lcom/samsung/privilege/activity/AboutUsActivity$3;->this$0:Lcom/samsung/privilege/activity/AboutUsActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/AboutUsActivity$3;->val$input:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 201
    iget-object v2, p0, Lcom/samsung/privilege/activity/AboutUsActivity$3;->val$input:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 203
    .local v1, "result":Ljava/lang/String;
    if-eqz v1, :cond_31

    const-string/jumbo v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_31

    .line 204
    new-instance v0, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/privilege/activity/AboutUsActivity$3;->this$0:Lcom/samsung/privilege/activity/AboutUsActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 205
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v2, "campaign_id"

    invoke-static {v1}, Lcom/bzbs/util/BBUtil;->CTypeInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 206
    iget-object v2, p0, Lcom/samsung/privilege/activity/AboutUsActivity$3;->this$0:Lcom/samsung/privilege/activity/AboutUsActivity;

    invoke-virtual {v2, v0}, Lcom/samsung/privilege/activity/AboutUsActivity;->startActivity(Landroid/content/Intent;)V

    .line 208
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_31
    return-void
.end method
