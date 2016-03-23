.class final Lcom/bzbs/lib/survey/util/ResumeUtil$2;
.super Ljava/lang/Object;
.source "ResumeUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/ResumeUtil;->showDialogAllowUse(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 230
    iput-object p1, p0, Lcom/bzbs/lib/survey/util/ResumeUtil$2;->val$activity:Landroid/app/Activity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "p_dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 232
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 233
    iget-object v0, p0, Lcom/bzbs/lib/survey/util/ResumeUtil$2;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/bzbs/lib/survey/LibUserLogin;->Logout(Landroid/app/Activity;)V

    .line 234
    return-void
.end method
