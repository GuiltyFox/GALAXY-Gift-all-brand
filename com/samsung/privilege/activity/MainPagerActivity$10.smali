.class Lcom/samsung/privilege/activity/MainPagerActivity$10;
.super Ljava/lang/Object;
.source "MainPagerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/MainPagerActivity;->showDialogConfirmLoginFacebook(Landroid/content/Context;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

.field final synthetic val$activityContext:Landroid/content/Context;

.field final synthetic val$dialogConfirm:Landroid/app/Dialog;

.field final synthetic val$imgOk:Landroid/widget/ImageView;

.field final synthetic val$is_auto_login_fb:Z


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/MainPagerActivity;Landroid/app/Dialog;Landroid/widget/ImageView;Landroid/content/Context;Z)V
    .registers 6
    .param p1, "this$0"    # Lcom/samsung/privilege/activity/MainPagerActivity;

    .prologue
    .line 847
    iput-object p1, p0, Lcom/samsung/privilege/activity/MainPagerActivity$10;->this$0:Lcom/samsung/privilege/activity/MainPagerActivity;

    iput-object p2, p0, Lcom/samsung/privilege/activity/MainPagerActivity$10;->val$dialogConfirm:Landroid/app/Dialog;

    iput-object p3, p0, Lcom/samsung/privilege/activity/MainPagerActivity$10;->val$imgOk:Landroid/widget/ImageView;

    iput-object p4, p0, Lcom/samsung/privilege/activity/MainPagerActivity$10;->val$activityContext:Landroid/content/Context;

    iput-boolean p5, p0, Lcom/samsung/privilege/activity/MainPagerActivity$10;->val$is_auto_login_fb:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 849
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$10;->val$dialogConfirm:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 851
    iget-object v0, p0, Lcom/samsung/privilege/activity/MainPagerActivity$10;->val$imgOk:Landroid/widget/ImageView;

    new-instance v1, Lcom/samsung/privilege/activity/MainPagerActivity$10$1;

    invoke-direct {v1, p0}, Lcom/samsung/privilege/activity/MainPagerActivity$10$1;-><init>(Lcom/samsung/privilege/activity/MainPagerActivity$10;)V

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 857
    return-void
.end method
