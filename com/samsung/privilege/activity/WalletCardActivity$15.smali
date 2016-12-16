.class Lcom/samsung/privilege/activity/WalletCardActivity$15;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity;->a(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/WalletCardActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V
    .registers 2

    .prologue
    .line 1142
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$15;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1145
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$15;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->aa:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$15;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    const v2, 0x7f0903b5

    invoke-virtual {v1, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3c

    .line 1146
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$15;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$15;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity;->f:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$15;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity;->e:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Lcom/samsung/privilege/activity/WalletCardActivity;Landroid/view/View;Landroid/view/View;ZZ)V

    .line 1147
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$15;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->j(Lcom/samsung/privilege/activity/WalletCardActivity;)Z

    move-result v0

    if-ne v0, v4, :cond_3c

    .line 1148
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$15;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/util/ScreenUtil;->d(Landroid/app/Activity;)V

    .line 1149
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$15;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0, v3}, Lcom/samsung/privilege/activity/WalletCardActivity;->b(Lcom/samsung/privilege/activity/WalletCardActivity;Z)Z

    .line 1152
    :cond_3c
    return-void
.end method
