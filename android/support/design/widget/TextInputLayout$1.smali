.class Landroid/support/design/widget/TextInputLayout$1;
.super Ljava/lang/Object;
.source "TextInputLayout.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/design/widget/TextInputLayout;->setEditText(Landroid/widget/EditText;)V
.end annotation


# instance fields
.field final synthetic this$0:Landroid/support/design/widget/TextInputLayout;


# direct methods
.method constructor <init>(Landroid/support/design/widget/TextInputLayout;)V
    .registers 2

    .prologue
    .line 237
    iput-object p1, p0, Landroid/support/design/widget/TextInputLayout$1;->this$0:Landroid/support/design/widget/TextInputLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .registers 4

    .prologue
    .line 240
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout$1;->this$0:Landroid/support/design/widget/TextInputLayout;

    const/4 v1, 0x1

    # invokes: Landroid/support/design/widget/TextInputLayout;->updateLabelState(Z)V
    invoke-static {v0, v1}, Landroid/support/design/widget/TextInputLayout;->access$100(Landroid/support/design/widget/TextInputLayout;Z)V

    .line 241
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout$1;->this$0:Landroid/support/design/widget/TextInputLayout;

    # getter for: Landroid/support/design/widget/TextInputLayout;->mCounterEnabled:Z
    invoke-static {v0}, Landroid/support/design/widget/TextInputLayout;->access$200(Landroid/support/design/widget/TextInputLayout;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 242
    iget-object v0, p0, Landroid/support/design/widget/TextInputLayout$1;->this$0:Landroid/support/design/widget/TextInputLayout;

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v1

    # invokes: Landroid/support/design/widget/TextInputLayout;->updateCounter(I)V
    invoke-static {v0, v1}, Landroid/support/design/widget/TextInputLayout;->access$300(Landroid/support/design/widget/TextInputLayout;I)V

    .line 244
    :cond_17
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .prologue
    .line 247
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 5

    .prologue
    .line 250
    return-void
.end method
