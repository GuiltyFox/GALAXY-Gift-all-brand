.class Lcom/samsung/privilege/activity/WalletCardActivity$16$2;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity$16;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/WalletCardActivity$16;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$16;)V
    .registers 2

    .prologue
    .line 1653
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$16$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity$16;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$16$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity$16;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$16;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->k:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1658
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$16$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity$16;

    iget v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$16;->b:I

    if-nez v0, :cond_11

    .line 1663
    :cond_11
    return-void
.end method
