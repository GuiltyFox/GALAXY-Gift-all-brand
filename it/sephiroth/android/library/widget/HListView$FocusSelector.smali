.class Lit/sephiroth/android/library/widget/HListView$FocusSelector;
.super Ljava/lang/Object;
.source "HListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lit/sephiroth/android/library/widget/HListView;

.field private b:I

.field private c:I


# direct methods
.method private constructor <init>(Lit/sephiroth/android/library/widget/HListView;)V
    .registers 2

    .prologue
    .line 1079
    iput-object p1, p0, Lit/sephiroth/android/library/widget/HListView$FocusSelector;->a:Lit/sephiroth/android/library/widget/HListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lit/sephiroth/android/library/widget/HListView;Lit/sephiroth/android/library/widget/HListView$1;)V
    .registers 3

    .prologue
    .line 1079
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/HListView$FocusSelector;-><init>(Lit/sephiroth/android/library/widget/HListView;)V

    return-void
.end method


# virtual methods
.method public a(II)Lit/sephiroth/android/library/widget/HListView$FocusSelector;
    .registers 3

    .prologue
    .line 1085
    iput p1, p0, Lit/sephiroth/android/library/widget/HListView$FocusSelector;->b:I

    .line 1086
    iput p2, p0, Lit/sephiroth/android/library/widget/HListView$FocusSelector;->c:I

    .line 1087
    return-object p0
.end method

.method public run()V
    .registers 4

    .prologue
    .line 1092
    iget-object v0, p0, Lit/sephiroth/android/library/widget/HListView$FocusSelector;->a:Lit/sephiroth/android/library/widget/HListView;

    iget v1, p0, Lit/sephiroth/android/library/widget/HListView$FocusSelector;->b:I

    iget v2, p0, Lit/sephiroth/android/library/widget/HListView$FocusSelector;->c:I

    invoke-virtual {v0, v1, v2}, Lit/sephiroth/android/library/widget/HListView;->setSelectionFromLeft(II)V

    .line 1093
    return-void
.end method
