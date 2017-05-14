.class final Lcom/samsung/privilege/util/DialogOTPUtil$2;
.super Ljava/lang/Object;
.source "DialogOTPUtil.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogOTPUtil;->a(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Landroid/widget/RelativeLayout;)V
    .registers 2

    .prologue
    .line 113
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogOTPUtil$2;->a:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5

    .prologue
    .line 116
    const/4 v0, 0x4

    if-ne p2, v0, :cond_a

    .line 117
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogOTPUtil$2;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z

    .line 118
    const/4 v0, 0x1

    .line 120
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
