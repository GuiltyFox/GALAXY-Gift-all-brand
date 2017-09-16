.class Lcom/samsung/privilege/activity/WalletCardActivity$37$2;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity$37;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/WalletCardActivity$37;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$37;)V
    .registers 2

    .prologue
    .line 3476
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$37$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity$37;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 3479
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$37$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity$37;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$37;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->o:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3481
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$37$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity$37;

    iget v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$37;->b:I

    if-nez v0, :cond_11

    .line 3486
    :cond_11
    return-void
.end method
