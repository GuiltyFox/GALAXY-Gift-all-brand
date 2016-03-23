.class Lcom/samsung/privilege/activity/CardsUsedActivity$CheckWalletListener;
.super Ljava/lang/Object;
.source "CardsUsedActivity.java"

# interfaces
.implements Lcom/bzbs/event/WalletEvents$WalletListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/privilege/activity/CardsUsedActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CheckWalletListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;


# direct methods
.method private constructor <init>(Lcom/samsung/privilege/activity/CardsUsedActivity;)V
    .registers 2

    .prologue
    .line 164
    iput-object p1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$CheckWalletListener;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/privilege/activity/CardsUsedActivity;Lcom/samsung/privilege/activity/CardsUsedActivity$1;)V
    .registers 3
    .param p1, "x0"    # Lcom/samsung/privilege/activity/CardsUsedActivity;
    .param p2, "x1"    # Lcom/samsung/privilege/activity/CardsUsedActivity$1;

    .prologue
    .line 164
    invoke-direct {p0, p1}, Lcom/samsung/privilege/activity/CardsUsedActivity$CheckWalletListener;-><init>(Lcom/samsung/privilege/activity/CardsUsedActivity;)V

    return-void
.end method


# virtual methods
.method public onPaymentFail(Ljava/lang/String;)V
    .registers 2
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 179
    return-void
.end method

.method public onPaymentSuccess(Ljava/lang/String;)V
    .registers 4
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 167
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$CheckWalletListener;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CardsUsedActivity;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/samsung/privilege/activity/CardsUsedActivity$CheckWalletListener$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/CardsUsedActivity$CheckWalletListener$1;-><init>(Lcom/samsung/privilege/activity/CardsUsedActivity$CheckWalletListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 174
    return-void
.end method
