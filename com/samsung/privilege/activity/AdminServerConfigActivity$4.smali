.class Lcom/samsung/privilege/activity/AdminServerConfigActivity$4;
.super Ljava/lang/Object;
.source "AdminServerConfigActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/activity/AdminServerConfigActivity;->doUseStaging(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/activity/AdminServerConfigActivity;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/activity/AdminServerConfigActivity;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/activity/AdminServerConfigActivity$4;->this$0:Lcom/samsung/privilege/activity/AdminServerConfigActivity;

    .line 97
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 3
    .param p1, "p_dialog"    # Landroid/content/DialogInterface;
    .param p2, "id"    # I

    .prologue
    .line 99
    invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V

    .line 100
    return-void
.end method
