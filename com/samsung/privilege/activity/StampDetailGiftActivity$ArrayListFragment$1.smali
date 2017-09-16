.class Lcom/samsung/privilege/activity/StampDetailGiftActivity$ArrayListFragment$1;
.super Ljava/lang/Object;
.source "StampDetailGiftActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/StampDetailGiftActivity$ArrayListFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation


# instance fields
.field final synthetic a:Lcom/samsung/privilege/activity/StampDetailGiftActivity$ArrayListFragment;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/StampDetailGiftActivity$ArrayListFragment;)V
    .registers 2

    .prologue
    .line 1054
    iput-object p1, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$ArrayListFragment$1;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity$ArrayListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3

    .prologue
    .line 1057
    iget-object v0, p0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$ArrayListFragment$1;->a:Lcom/samsung/privilege/activity/StampDetailGiftActivity$ArrayListFragment;

    iget v0, v0, Lcom/samsung/privilege/activity/StampDetailGiftActivity$ArrayListFragment;->a:I

    invoke-static {v0}, Lcom/bzbs/event/StampEvents;->a(I)V

    .line 1058
    return-void
.end method
