.class Lcom/samsung/privilege/activity/WalletCardActivity$CheckWalletListener;
.super Ljava/lang/Object;
.source "WalletCardActivity.java"

# interfaces
.implements Lcom/bzbs/event/WalletEvents$WalletListener;


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/WalletCardActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V
    .registers 2

    .prologue
    .line 294
    iput-object p1, p0, Lcom/samsung/privilege/activity/WalletCardActivity$CheckWalletListener;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/privilege/activity/WalletCardActivity;Lcom/samsung/privilege/activity/WalletCardActivity$1;)V
    .registers 3

    .prologue
    .line 294
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/WalletCardActivity$CheckWalletListener;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 297
    iget-object v0, p0, Lcom/samsung/privilege/activity/WalletCardActivity$CheckWalletListener;->a:Lcom/samsung/privilege/activity/WalletCardActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/WalletCardActivity;->b(Lcom/samsung/privilege/activity/WalletCardActivity;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/WalletCardActivity$CheckWalletListener$1;

    invoke-direct {v1, p0, p1}, Lcom/samsung/privilege/activity/WalletCardActivity$CheckWalletListener$1;-><init>(Lcom/samsung/privilege/activity/WalletCardActivity$CheckWalletListener;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 311
    return-void
.end method
