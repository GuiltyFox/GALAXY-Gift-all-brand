.class Lcom/samsung/privilege/activity/CardsUsedActivity$CheckWalletListener;
.super Ljava/lang/Object;
.source "CardsUsedActivity.java"

# interfaces
.implements Lcom/bzbs/event/WalletEvents$WalletListener;


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/CardsUsedActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/privilege/activity/CardsUsedActivity;)V
    .registers 2

    .prologue
    .line 162
    iput-object p1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$CheckWalletListener;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/privilege/activity/CardsUsedActivity;Lcom/samsung/privilege/activity/CardsUsedActivity$1;)V
    .registers 3

    .prologue
    .line 162
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/CardsUsedActivity$CheckWalletListener;-><init>(Lcom/samsung/privilege/activity/CardsUsedActivity;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    .prologue
    .line 165
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$CheckWalletListener;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CardsUsedActivity;->b:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CardsUsedActivity$CheckWalletListener$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CardsUsedActivity$CheckWalletListener$1;-><init>(Lcom/samsung/privilege/activity/CardsUsedActivity$CheckWalletListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 172
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 177
    return-void
.end method

.method public c(Ljava/lang/String;)V
    .registers 2

    .prologue
    .line 187
    return-void
.end method
