.class Lcom/samsung/privilege/activity/CardsUsedActivity$6$1;
.super Ljava/lang/Object;
.source "CardsUsedActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CardsUsedActivity$6;->successfully(Ljava/lang/String;ILokhttp3/Headers;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/CardsUsedActivity$6;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CardsUsedActivity$6;)V
    .registers 2

    .prologue
    .line 591
    iput-object p1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$6$1;->a:Lcom/samsung/privilege/activity/CardsUsedActivity$6;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 594
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$6$1;->a:Lcom/samsung/privilege/activity/CardsUsedActivity$6;

    iget-object v0, v0, Lcom/samsung/privilege/activity/CardsUsedActivity$6;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-static {v0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->p(Lcom/samsung/privilege/activity/CardsUsedActivity;)V

    .line 595
    return-void
.end method
