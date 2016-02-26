.class Lcom/samsung/privilege/util/ResumeUtil$7;
.super Ljava/lang/Object;
.source "ResumeUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/ResumeUtil;->showDialogMessage(Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;

.field private final synthetic val$dialogMessage:Landroid/app/Dialog;


# direct methods
.method constructor <init>(Landroid/app/Dialog;Landroid/app/Activity;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/util/ResumeUtil$7;->val$dialogMessage:Landroid/app/Dialog;

    iput-object p2, p0, Lcom/samsung/privilege/util/ResumeUtil$7;->val$activity:Landroid/app/Activity;

    .line 544
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 546
    iget-object v0, p0, Lcom/samsung/privilege/util/ResumeUtil$7;->val$dialogMessage:Landroid/app/Dialog;

    invoke-virtual {v0}, Landroid/app/Dialog;->dismiss()V

    .line 548
    iget-object v0, p0, Lcom/samsung/privilege/util/ResumeUtil$7;->val$activity:Landroid/app/Activity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/privilege/UserLogin;->Logout(Landroid/content/Context;Z)V

    .line 549
    return-void
.end method
