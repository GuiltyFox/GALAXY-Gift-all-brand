.class Lcom/samsung/privilege/activity/WalletCardActivity$9;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity;->k()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/WalletCardActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V
    .registers 2

    .prologue
    .line 937
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$9;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .prologue
    const/4 v2, 0x1

    .line 942
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$9;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->v:Landroid/widget/TextView;

    const-string/jumbo v1, "#277cbc"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 946
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$9;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->z:Landroid/widget/TextView;

    const-string/jumbo v1, "#9c9c9c"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 948
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$9;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v1, 0x7f05001a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 949
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 950
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$9;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity;->D:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 951
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$9;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity;->D:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 952
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$9;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity;->D:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 953
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$9;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->D:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 955
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$9;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v1, 0x7f05003a

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 956
    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    .line 957
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$9;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity;->E:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->clearAnimation()V

    .line 958
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$9;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity;->E:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setAnimation(Landroid/view/animation/Animation;)V

    .line 959
    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$9;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity;->E:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 961
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$9;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->k(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    .line 963
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Wallet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$9;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Click Dashboard"

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$9;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->d(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 964
    return-void
.end method
