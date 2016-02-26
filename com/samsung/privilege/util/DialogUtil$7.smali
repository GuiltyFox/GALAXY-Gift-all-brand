.class Lcom/samsung/privilege/util/DialogUtil$7;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogUtil;->showDialogConfirmLoginFacebook(Landroid/content/Context;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activityContext:Landroid/content/Context;

.field private final synthetic val$dialogConfirm:Landroid/app/Dialog;

.field private final synthetic val$imgOk:Landroid/widget/ImageView;

.field private final synthetic val$is_auto_login_fb:Z


# direct methods
.method constructor <init>(Landroid/app/Dialog;Landroid/widget/ImageView;Landroid/content/Context;Z)V
    .registers 5

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogUtil$7;->val$dialogConfirm:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogUtil$7;->val$imgOk:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/samsung/privilege/util/DialogUtil$7;->val$activityContext:Landroid/content/Context;

    iput-boolean p4, p0, Lcom/samsung/privilege/util/DialogUtil$7;->val$is_auto_login_fb:Z

    .line 371
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 373
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogUtil$7;->val$dialogConfirm:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 375
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogUtil$7;->val$imgOk:Landroid/widget/ImageView;

    new-instance v1, Lcom/samsung/privilege/util/DialogUtil$7$1;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogUtil$7;->val$activityContext:Landroid/content/Context;

    iget-boolean v3, p0, Lcom/samsung/privilege/util/DialogUtil$7;->val$is_auto_login_fb:Z

    invoke-direct {v1, p0, v2, v3}, Lcom/samsung/privilege/util/DialogUtil$7$1;-><init>(Lcom/samsung/privilege/util/DialogUtil$7;Landroid/content/Context;Z)V

    .line 380
    const-wide/16 v2, 0x1f4

    .line 375
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 381
    return-void
.end method
