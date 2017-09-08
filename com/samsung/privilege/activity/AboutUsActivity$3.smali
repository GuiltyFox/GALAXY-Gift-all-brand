.class Lcom/samsung/privilege/activity/AboutUsActivity$3;
.super Ljava/lang/Object;
.source "AboutUsActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/AboutUsActivity;->doAdminCampaign(Landroid/view/View;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/EditText;

.field final synthetic b:Lcom/samsung/privilege/activity/AboutUsActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/AboutUsActivity;Landroid/widget/EditText;)V
    .registers 3

    .prologue
    .line 189
    iput-object p1, p0, Lcom/samsung/privilege/activity/AboutUsActivity$3;->b:Lcom/samsung/privilege/activity/AboutUsActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/AboutUsActivity$3;->a:Landroid/widget/EditText;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 7

    .prologue
    .line 192
    iget-object v0, p0, Lcom/samsung/privilege/activity/AboutUsActivity$3;->a:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 194
    if-eqz v0, :cond_31

    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_31

    .line 195
    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/samsung/privilege/activity/AboutUsActivity$3;->b:Lcom/samsung/privilege/activity/AboutUsActivity;

    invoke-virtual {v2}, Lcom/samsung/privilege/activity/AboutUsActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    const-class v3, Lcom/samsung/privilege/activity/CampaignDetailGiftActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 197
    const-string/jumbo v2, "campaign_id"

    invoke-static {v0}, Lcom/bzbs/util/BBUtil;->b(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 198
    iget-object v0, p0, Lcom/samsung/privilege/activity/AboutUsActivity$3;->b:Lcom/samsung/privilege/activity/AboutUsActivity;

    invoke-virtual {v0, v1}, Lcom/samsung/privilege/activity/AboutUsActivity;->startActivity(Landroid/content/Intent;)V

    .line 200
    :cond_31
    return-void
.end method
