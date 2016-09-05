.class Landroid/support/design/widget/BottomSheetDialog$2;
.super Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;
.source "BottomSheetDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/BottomSheetDialog;
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/BottomSheetDialog;


# direct methods
.method constructor <init>(Landroid/support/design/widget/BottomSheetDialog;)V
    .registers 2

    .prologue
    .line 136
    iput-object p1, p0, Landroid/support/design/widget/BottomSheetDialog$2;->this$0:Landroid/support/design/widget/BottomSheetDialog;

    invoke-direct {p0}, Landroid/support/design/widget/BottomSheetBehavior$BottomSheetCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onSlide(Landroid/view/View;F)V
    .registers 3

    .prologue
    .line 147
    return-void
.end method

.method public onStateChanged(Landroid/view/View;I)V
    .registers 4

    .prologue
    .line 140
    const/4 v0, 0x5

    if-ne p2, v0, :cond_8

    .line 141
    iget-object v0, p0, Landroid/support/design/widget/BottomSheetDialog$2;->this$0:Landroid/support/design/widget/BottomSheetDialog;

    invoke-virtual {v0}, Landroid/support/design/widget/BottomSheetDialog;->dismiss()V

    .line 143
    :cond_8
    return-void
.end method
