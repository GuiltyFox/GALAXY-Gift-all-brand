.class Lcom/samsung/privilege/activity/WalletCardActivity$22$2;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity$22;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lcom/samsung/privilege/activity/WalletCardActivity$22;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$22;ILjava/lang/String;)V
    .registers 4

    .prologue
    .line 1649
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$2;->c:Lcom/samsung/privilege/activity/WalletCardActivity$22;

    iput p2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$2;->a:I

    iput-object p3, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$2;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 1652
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$2;->c:Lcom/samsung/privilege/activity/WalletCardActivity$22;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$22;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->a:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 1654
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$2;->c:Lcom/samsung/privilege/activity/WalletCardActivity$22;

    iget-boolean v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$22;->a:Z

    if-nez v0, :cond_23

    .line 1655
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$2;->c:Lcom/samsung/privilege/activity/WalletCardActivity$22;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$22;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->b(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    .line 1656
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$2;->c:Lcom/samsung/privilege/activity/WalletCardActivity$22;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$22;->b:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget v1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$2;->a:I

    iget-object v2, p0, Lcom/samsung/privilege/activity/WalletCardActivity$22$2;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/bzbs/util/DialogUtil;->a(Landroid/content/Context;ILjava/lang/String;)V

    .line 1658
    :cond_23
    return-void
.end method
