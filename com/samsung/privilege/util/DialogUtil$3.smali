.class Lcom/samsung/privilege/util/DialogUtil$3;
.super Ljava/lang/Object;
.source "DialogUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogUtil;->showDialogPointTransfer(Landroid/content/Context;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activityContext:Landroid/content/Context;

.field private final synthetic val$dialogPoint:Landroid/app/Dialog;

.field private final synthetic val$imgOk:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Landroid/widget/ImageView;Landroid/content/Context;)V
    .registers 4

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogUtil$3;->val$dialogPoint:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/samsung/privilege/util/DialogUtil$3;->val$imgOk:Landroid/widget/ImageView;

    iput-object p3, p0, Lcom/samsung/privilege/util/DialogUtil$3;->val$activityContext:Landroid/content/Context;

    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 6
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 164
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogUtil$3;->val$dialogPoint:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 166
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogUtil$3;->val$imgOk:Landroid/widget/ImageView;

    new-instance v1, Lcom/samsung/privilege/util/DialogUtil$3$1;

    iget-object v2, p0, Lcom/samsung/privilege/util/DialogUtil$3;->val$activityContext:Landroid/content/Context;

    invoke-direct {v1, p0, v2}, Lcom/samsung/privilege/util/DialogUtil$3$1;-><init>(Lcom/samsung/privilege/util/DialogUtil$3;Landroid/content/Context;)V

    .line 171
    const-wide/16 v2, 0x3e8

    .line 166
    invoke-virtual {v0, v1, v2, v3}, Landroid/widget/ImageView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 172
    return-void
.end method
