.class Lcom/samsung/privilege/activity/TransactionDisplayActivity$2;
.super Ljava/lang/Object;
.source "TransactionDisplayActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/TransactionDisplayActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/TransactionDisplayActivity;

.field final synthetic val$tvTransactionID:Landroid/widget/TextView;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/TransactionDisplayActivity;Landroid/widget/TextView;)V
    .registers 3
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/TransactionDisplayActivity;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity$2;->this$0:Lcom/samsung/privilege/activity/TransactionDisplayActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity$2;->val$tvTransactionID:Landroid/widget/TextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 81
    iget-object v0, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity$2;->this$0:Lcom/samsung/privilege/activity/TransactionDisplayActivity;

    # getter for: Lcom/samsung/privilege/activity/TransactionDisplayActivity;->animation1:Landroid/view/animation/Animation;
    invoke-static {v0}, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->access$400(Lcom/samsung/privilege/activity/TransactionDisplayActivity;)Landroid/view/animation/Animation;

    move-result-object v0

    new-instance v1, Lcom/samsung/privilege/activity/TransactionDisplayActivity$2$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/TransactionDisplayActivity$2$1;-><init>(Lcom/samsung/privilege/activity/TransactionDisplayActivity$2;)V

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 101
    iget-object v0, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity$2;->this$0:Lcom/samsung/privilege/activity/TransactionDisplayActivity;

    # getter for: Lcom/samsung/privilege/activity/TransactionDisplayActivity;->isBarcode:Z
    invoke-static {v0}, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->access$000(Lcom/samsung/privilege/activity/TransactionDisplayActivity;)Z

    move-result v0

    if-eqz v0, :cond_44

    .line 102
    iget-object v0, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity$2;->this$0:Lcom/samsung/privilege/activity/TransactionDisplayActivity;

    const/4 v1, 0x0

    # setter for: Lcom/samsung/privilege/activity/TransactionDisplayActivity;->isBarcode:Z
    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->access$002(Lcom/samsung/privilege/activity/TransactionDisplayActivity;Z)Z

    .line 107
    :goto_1c
    iget-object v0, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity$2;->this$0:Lcom/samsung/privilege/activity/TransactionDisplayActivity;

    # getter for: Lcom/samsung/privilege/activity/TransactionDisplayActivity;->imgBarcode:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->access$200(Lcom/samsung/privilege/activity/TransactionDisplayActivity;)Landroid/widget/ImageView;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/ImageView;->clearAnimation()V

    .line 108
    iget-object v0, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity$2;->this$0:Lcom/samsung/privilege/activity/TransactionDisplayActivity;

    # getter for: Lcom/samsung/privilege/activity/TransactionDisplayActivity;->imgBarcode:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->access$200(Lcom/samsung/privilege/activity/TransactionDisplayActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity$2;->this$0:Lcom/samsung/privilege/activity/TransactionDisplayActivity;

    # getter for: Lcom/samsung/privilege/activity/TransactionDisplayActivity;->animation1:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->access$400(Lcom/samsung/privilege/activity/TransactionDisplayActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setAnimation(Landroid/view/animation/Animation;)V

    .line 109
    iget-object v0, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity$2;->this$0:Lcom/samsung/privilege/activity/TransactionDisplayActivity;

    # getter for: Lcom/samsung/privilege/activity/TransactionDisplayActivity;->imgBarcode:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->access$200(Lcom/samsung/privilege/activity/TransactionDisplayActivity;)Landroid/widget/ImageView;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity$2;->this$0:Lcom/samsung/privilege/activity/TransactionDisplayActivity;

    # getter for: Lcom/samsung/privilege/activity/TransactionDisplayActivity;->animation1:Landroid/view/animation/Animation;
    invoke-static {v1}, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->access$400(Lcom/samsung/privilege/activity/TransactionDisplayActivity;)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    .line 110
    return-void

    .line 104
    :cond_44
    iget-object v0, p0, Lcom/samsung/privilege/activity/TransactionDisplayActivity$2;->this$0:Lcom/samsung/privilege/activity/TransactionDisplayActivity;

    const/4 v1, 0x1

    # setter for: Lcom/samsung/privilege/activity/TransactionDisplayActivity;->isBarcode:Z
    invoke-static {v0, v1}, Lcom/samsung/privilege/activity/TransactionDisplayActivity;->access$002(Lcom/samsung/privilege/activity/TransactionDisplayActivity;Z)Z

    goto :goto_1c
.end method
