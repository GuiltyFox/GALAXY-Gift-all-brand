.class Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener$2;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;->b(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;)V
    .registers 2

    .prologue
    .line 339
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 4

    .prologue
    .line 342
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    .line 344
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener$2;->a:Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    const-string/jumbo v1, "getWalletCardList"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;Z)V

    .line 345
    return-void
.end method
