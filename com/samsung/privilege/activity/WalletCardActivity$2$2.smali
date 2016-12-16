.class Lcom/samsung/privilege/activity/WalletCardActivity$2$2;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity$2;->b(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/WalletCardActivity$2;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$2;)V
    .registers 2

    .prologue
    .line 283
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$2$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 286
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$2$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity$2;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->b(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    .line 287
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$2$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity$2;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    const-string/jumbo v1, "getWalletCardList"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Ljava/lang/String;Z)V

    .line 288
    return-void
.end method
