.class Lic/buzzebeeslib/util/ResumeUtil$3;
.super Ljava/lang/Object;
.source "ResumeUtil.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lic/buzzebeeslib/util/ResumeUtil;->showDialogAllowUse(Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final synthetic val$activity:Landroid/app/Activity;


# direct methods
.method constructor <init>(Landroid/app/Activity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lic/buzzebeeslib/util/ResumeUtil$3;->val$activity:Landroid/app/Activity;

    .line 230
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
    iget-object v0, p0, Lic/buzzebeeslib/util/ResumeUtil$3;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lic/buzzebeeslib/LibUserLogin;->Logout(Landroid/app/Activity;)V

    .line 234
    return-void
.end method
