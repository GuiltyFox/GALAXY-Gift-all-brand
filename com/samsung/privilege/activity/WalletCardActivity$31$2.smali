.class Lcom/samsung/privilege/activity/WalletCardActivity$31$2;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity$31;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/WalletCardActivity$31;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$31;)V
    .registers 2

    .prologue
    .line 2793
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$31$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity$31;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2796
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$31$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity$31;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$31;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->k:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2798
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$31$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity$31;

    iget v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$31;->b:I

    if-nez v0, :cond_11

    .line 2803
    :cond_11
    return-void
.end method
