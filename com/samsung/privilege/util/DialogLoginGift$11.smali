.class final Lcom/samsung/privilege/util/DialogLoginGift$11;
.super Ljava/lang/Object;
.source "DialogLoginGift.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/util/DialogLoginGift;->b(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Landroid/widget/RelativeLayout;)V
    .registers 2

    .prologue
    .line 509
    iput-object p1, p0, Lcom/samsung/privilege/util/DialogLoginGift$11;->a:Landroid/widget/RelativeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5

    .prologue
    .line 512
    const/4 v0, 0x4

    if-ne p2, v0, :cond_a

    .line 513
    iget-object v0, p0, Lcom/samsung/privilege/util/DialogLoginGift$11;->a:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z

    .line 514
    const/4 v0, 0x1

    .line 516
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
