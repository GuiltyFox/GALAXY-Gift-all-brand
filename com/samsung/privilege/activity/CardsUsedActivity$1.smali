.class Lcom/samsung/privilege/activity/CardsUsedActivity$1;
.super Ljava/lang/Object;
.source "CardsUsedActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/CardsUsedActivity;->initialLayout()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/CardsUsedActivity;)V
    .registers 2
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/CardsUsedActivity;

    .prologue
    .line 248
    iput-object p1, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$1;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 251
    iget-object v0, p0, Lcom/samsung/privilege/activity/CardsUsedActivity$1;->this$0:Lcom/samsung/privilege/activity/CardsUsedActivity;

    invoke-virtual {v0}, Lcom/samsung/privilege/activity/CardsUsedActivity;->finish()V

    .line 252
    return-void
.end method
