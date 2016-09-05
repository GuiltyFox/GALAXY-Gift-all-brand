.class Lcom/samsung/privilege/activity/WalletCardActivity$8;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity;->b(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/WalletCardActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V
    .registers 2

    .prologue
    .line 935
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$8;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 7

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 938
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$8;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->V:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_2b

    .line 939
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$8;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$8;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v1, v1, Lcom/samsung/privilege/activity/WalletCardActivity;->f:Landroid/widget/RelativeLayout;

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$8;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v2, v2, Lcom/samsung/privilege/activity/WalletCardActivity;->e:Landroid/widget/RelativeLayout;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Lcom/samsung/privilege/activity/WalletCardActivity;Landroid/view/View;Landroid/view/View;ZZ)V

    .line 940
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$8;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->h(Lcom/samsung/privilege/activity/WalletCardActivity;)Z

    move-result v0

    if-ne v0, v4, :cond_2b

    .line 941
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$8;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/util/ScreenUtil;->d(Landroid/app/Activity;)V

    .line 942
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$8;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0, v3}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Lcom/samsung/privilege/activity/WalletCardActivity;Z)Z

    .line 945
    :cond_2b
    return-void
.end method
