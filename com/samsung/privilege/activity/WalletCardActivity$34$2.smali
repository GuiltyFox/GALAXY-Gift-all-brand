.class Lcom/samsung/privilege/activity/WalletCardActivity$34$2;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity$34;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/WalletCardActivity$34;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$34;)V
    .registers 2

    .prologue
    .line 3115
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$34$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity$34;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 3118
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$34$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity$34;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$34;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->o:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 3120
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$34$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity$34;

    iget v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$34;->b:I

    if-nez v0, :cond_11

    .line 3125
    :cond_11
    return-void
.end method
