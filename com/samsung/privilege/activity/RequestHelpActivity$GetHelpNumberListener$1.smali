.class Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener$1;
.super Ljava/lang/Object;
.source "RequestHelpActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener;->onComplete(ILjava/lang/String;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener;

.field private final synthetic val$code:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener;Ljava/lang/String;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener$1;->this$1:Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener;

    iput-object p2, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener$1;->val$code:Ljava/lang/String;

    .line 488
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    .prologue
    .line 491
    iget-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener$1;->this$1:Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener;

    # getter for: Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener;->access$1(Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener;)Lcom/samsung/privilege/activity/RequestHelpActivity;

    move-result-object v2

    const v3, 0x7f07035e

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/RequestHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 492
    .local v0, "layoutHelpCode":Landroid/widget/RelativeLayout;
    iget-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener$1;->this$1:Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener;

    # getter for: Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener;->this$0:Lcom/samsung/privilege/activity/RequestHelpActivity;
    invoke-static {v2}, Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener;->access$1(Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener;)Lcom/samsung/privilege/activity/RequestHelpActivity;

    move-result-object v2

    const v3, 0x7f070360

    invoke-virtual {v2, v3}, Lcom/samsung/privilege/activity/RequestHelpActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 494
    .local v1, "tvHelpCodeNumber":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener$1;->val$code:Ljava/lang/String;

    if-eqz v2, :cond_36

    iget-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener$1;->val$code:Ljava/lang/String;

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_36

    .line 495
    iget-object v2, p0, Lcom/samsung/privilege/activity/RequestHelpActivity$GetHelpNumberListener$1;->val$code:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 496
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 502
    :goto_35
    return-void

    .line 498
    :cond_36
    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 499
    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_35
.end method
