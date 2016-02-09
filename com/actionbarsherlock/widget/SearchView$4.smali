.class Lcom/actionbarsherlock/widget/SearchView$4;
.super Ljava/lang/Object;
.source "SearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/actionbarsherlock/widget/SearchView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/actionbarsherlock/widget/SearchView;


# direct methods
.method constructor <init>(Lcom/actionbarsherlock/widget/SearchView;)V
    .registers 2

    .prologue
    .line 1
    iput-object p1, p0, Lcom/actionbarsherlock/widget/SearchView$4;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    .line 875
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 878
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$4;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    # getter for: Lcom/actionbarsherlock/widget/SearchView;->mSearchButton:Landroid/view/View;
    invoke-static {v0}, Lcom/actionbarsherlock/widget/SearchView;->access$3(Lcom/actionbarsherlock/widget/SearchView;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_e

    .line 879
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$4;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    # invokes: Lcom/actionbarsherlock/widget/SearchView;->onSearchClicked()V
    invoke-static {v0}, Lcom/actionbarsherlock/widget/SearchView;->access$4(Lcom/actionbarsherlock/widget/SearchView;)V

    .line 889
    :cond_d
    :goto_d
    return-void

    .line 880
    :cond_e
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$4;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    # getter for: Lcom/actionbarsherlock/widget/SearchView;->mCloseButton:Landroid/widget/ImageView;
    invoke-static {v0}, Lcom/actionbarsherlock/widget/SearchView;->access$5(Lcom/actionbarsherlock/widget/SearchView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_1c

    .line 881
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$4;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    # invokes: Lcom/actionbarsherlock/widget/SearchView;->onCloseClicked()V
    invoke-static {v0}, Lcom/actionbarsherlock/widget/SearchView;->access$6(Lcom/actionbarsherlock/widget/SearchView;)V

    goto :goto_d

    .line 882
    :cond_1c
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$4;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    # getter for: Lcom/actionbarsherlock/widget/SearchView;->mSubmitButton:Landroid/view/View;
    invoke-static {v0}, Lcom/actionbarsherlock/widget/SearchView;->access$7(Lcom/actionbarsherlock/widget/SearchView;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_2a

    .line 883
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$4;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    # invokes: Lcom/actionbarsherlock/widget/SearchView;->onSubmitQuery()V
    invoke-static {v0}, Lcom/actionbarsherlock/widget/SearchView;->access$8(Lcom/actionbarsherlock/widget/SearchView;)V

    goto :goto_d

    .line 884
    :cond_2a
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$4;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    # getter for: Lcom/actionbarsherlock/widget/SearchView;->mVoiceButton:Landroid/view/View;
    invoke-static {v0}, Lcom/actionbarsherlock/widget/SearchView;->access$9(Lcom/actionbarsherlock/widget/SearchView;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_38

    .line 885
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$4;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    # invokes: Lcom/actionbarsherlock/widget/SearchView;->onVoiceClicked()V
    invoke-static {v0}, Lcom/actionbarsherlock/widget/SearchView;->access$10(Lcom/actionbarsherlock/widget/SearchView;)V

    goto :goto_d

    .line 886
    :cond_38
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$4;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    # getter for: Lcom/actionbarsherlock/widget/SearchView;->mQueryTextView:Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;
    invoke-static {v0}, Lcom/actionbarsherlock/widget/SearchView;->access$11(Lcom/actionbarsherlock/widget/SearchView;)Lcom/actionbarsherlock/widget/SearchView$SearchAutoComplete;

    move-result-object v0

    if-ne p1, v0, :cond_d

    .line 887
    iget-object v0, p0, Lcom/actionbarsherlock/widget/SearchView$4;->this$0:Lcom/actionbarsherlock/widget/SearchView;

    # invokes: Lcom/actionbarsherlock/widget/SearchView;->forceSuggestionQuery()V
    invoke-static {v0}, Lcom/actionbarsherlock/widget/SearchView;->access$12(Lcom/actionbarsherlock/widget/SearchView;)V

    goto :goto_d
.end method
