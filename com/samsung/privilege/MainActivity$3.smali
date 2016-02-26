.class Lcom/samsung/privilege/MainActivity$3;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/privilege/MainActivity;->doRequestOTP(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/privilege/MainActivity;

.field private final synthetic val$layoutOtpRequest:Landroid/widget/RelativeLayout;


# direct methods
.method constructor <init>(Lcom/samsung/privilege/MainActivity;Landroid/widget/RelativeLayout;)V
    .registers 3

    .prologue
    .line 1
    iput-object p1, p0, Lcom/samsung/privilege/MainActivity$3;->this$0:Lcom/samsung/privilege/MainActivity;

    iput-object p2, p0, Lcom/samsung/privilege/MainActivity$3;->val$layoutOtpRequest:Landroid/widget/RelativeLayout;

    .line 658
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .registers 5
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 661
    const/4 v0, 0x4

    if-ne p2, v0, :cond_a

    .line 662
    iget-object v0, p0, Lcom/samsung/privilege/MainActivity$3;->val$layoutOtpRequest:Landroid/widget/RelativeLayout;

    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->performClick()Z

    .line 663
    const/4 v0, 0x1

    .line 665
    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method
