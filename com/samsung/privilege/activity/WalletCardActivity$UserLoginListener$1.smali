.class Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener$1;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;->a(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;)V
    .registers 2

    .prologue
    .line 324
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    .prologue
    .line 327
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    .line 329
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener$1;->a:Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/WalletCardActivity$UserLoginListener;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    const-string/jumbo v1, "getWalletCardList"

    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/WalletCardActivity;->a(Lcom/samsung/privilege/activity/WalletCardActivity;Ljava/lang/String;)V

    .line 330
    return-void
.end method
