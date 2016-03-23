.class final Lcom/bzbs/lib/survey/util/ResumeUtil$4;
.super Ljava/lang/Object;
.source "ResumeUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/bzbs/lib/survey/util/ResumeUtil;->showDialogHasNewVersion(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .prologue
    .line 268
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 4
    .param p1, "p_dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 270
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 271
    const/4 v0, 0x0

    # setter for: Lcom/bzbs/lib/survey/util/ResumeUtil;->gIsshowDialogHasNewVersion:Z
    invoke-static {v0}, Lcom/bzbs/lib/survey/util/ResumeUtil;->access$302(Z)Z

    .line 272
    return-void
.end method
