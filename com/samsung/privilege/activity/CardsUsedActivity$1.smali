.class Lcom/samsung/privilege/activity/CardsUsedActivity$1;
.super Ljava/lang/Object;
.source "CardsUsedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CardsUsedActivity;->c()V
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/CardsUsedActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CardsUsedActivity;)V
    .registers 2

    .prologue
    .line 248
    iput-object p1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$1;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 251
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$1;->a:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->finish()V

    .line 252
    return-void
.end method
