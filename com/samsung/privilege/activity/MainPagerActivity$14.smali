.class Lcom/samsung/privilege/activity/MainPagerActivity$14;
.super Ljava/lang/Object;
.source "MainPagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainPagerActivity;->showDialogPointTransfer(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

.field final synthetic val$activityContext:Landroid/content/Context;

.field final synthetic val$dialogPoint:Landroid/app/Dialog;

.field final synthetic val$layoutOk:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;Landroid/widget/RelativeLayout;Landroid/content/Context;)V
    .registers 5
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/MainPagerActivity;

    .prologue
    .line 988
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$14;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$14;->val$dialogPoint:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/samsung/privilege/activity/MainPagerActivity$14;->val$layoutOk:Landroid/widget/RelativeLayout;

    iput-object p4, p0, Lcom/samsung/privilege/activity/MainPagerActivity$14;->val$activityContext:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 990
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$14;->val$dialogPoint:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 992
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$14;->val$layoutOk:Landroid/widget/RelativeLayout;

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$14$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$14$1;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity$14;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/RelativeLayout;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 998
    return-void
.end method
