.class Lcom/samsung/privilege/activity/WalletCardActivity$28$2;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity$28;->failure(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/WalletCardActivity$28;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$28;)V
    .registers 2

    .prologue
    .line 2467
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 2470
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$28$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity$28;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$28;->c:Lcom/samsung/privilege/activity/WalletCardActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity;->w:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2471
    return-void
.end method
