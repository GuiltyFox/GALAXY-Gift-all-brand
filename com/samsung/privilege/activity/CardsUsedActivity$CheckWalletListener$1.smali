.class Lcom/samsung/privilege/activity/CardsUsedActivity$CheckWalletListener$1;
.super Ljava/lang/Object;
.source "CardsUsedActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CardsUsedActivity$CheckWalletListener;->a(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/CardsUsedActivity$CheckWalletListener;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CardsUsedActivity$CheckWalletListener;)V
    .registers 2

    .prologue
    .line 165
    iput-object p1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$CheckWalletListener$1;->a:Lcom/samsung/privilege/activity/CardsUsedActivity$CheckWalletListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 168
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$CheckWalletListener$1;->a:Lcom/samsung/privilege/activity/CardsUsedActivity$CheckWalletListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$CheckWalletListener;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->a(Lcom/samsung/privilege/activity/CardsUsedActivity;)V

    .line 169
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$CheckWalletListener$1;->a:Lcom/samsung/privilege/activity/CardsUsedActivity$CheckWalletListener;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$CheckWalletListener;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->a()V

    .line 170
    return-void
.end method
