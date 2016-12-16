.class Lcom/samsung/privilege/activity/WalletCardActivity$7;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity;->i()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/WalletCardActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V
    .registers 2

    .prologue
    .line 653
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$7;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 8

    .prologue
    .line 656
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$7;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->n:Landroid/widget/RelativeLayout;

    const v1, 0x7f0f0049

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 657
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$7;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->m:Landroid/widget/ImageView;

    const v1, 0x7f0202ce

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 658
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$7;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->o:Landroid/widget/TextView;

    const-string/jumbo v1, "#ffffff"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 660
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$7;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->z:Landroid/widget/RelativeLayout;

    const v1, 0x7f0f0048

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 661
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$7;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->y:Landroid/widget/ImageView;

    const v1, 0x7f0202c9

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 662
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$7;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->A:Landroid/widget/TextView;

    const-string/jumbo v1, "#006cac"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 663
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$7;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->B:Landroid/widget/TextView;

    const-string/jumbo v1, "#006cac"

    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 665
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$7;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->f(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    .line 667
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "Wallet "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$7;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->e(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v1

    iget-object v1, v1, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Click Promotion"

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$7;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->e(Lcom/samsung/privilege/activity/WalletCardActivity;)Lcom/bzbs/bean/DashboardItem;

    move-result-object v2

    iget-object v2, v2, Lcom/bzbs/bean/DashboardItem;->wallet_issuer:Ljava/lang/String;

    const-wide/16 v4, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/privilege/GalaxyGift;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)V

    .line 668
    return-void
.end method
