.class Lit/sephiroth/android/library/widget/AdapterView$SelectionNotifier;
.super Ljava/lang/Object;
.source "AdapterView.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lit/sephiroth/android/library/widget/AdapterView;


# direct methods
.method private constructor <init>(Lit/sephiroth/android/library/widget/AdapterView;)V
    .registers 2

    .prologue
    .line 878
    iput-object p1, p0, Lit/sephiroth/android/library/widget/AdapterView$SelectionNotifier;->a:Lit/sephiroth/android/library/widget/AdapterView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lit/sephiroth/android/library/widget/AdapterView;Lit/sephiroth/android/library/widget/AdapterView$1;)V
    .registers 3

    .prologue
    .line 878
    invoke-direct {p0, p1}, Lit/sephiroth/android/library/widget/AdapterView$SelectionNotifier;-><init>(Lit/sephiroth/android/library/widget/AdapterView;)V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .prologue
    .line 882
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView$SelectionNotifier;->a:Lit/sephiroth/android/library/widget/AdapterView;

    iget-boolean v0, v0, Lit/sephiroth/android/library/widget/AdapterView;->aj:Z

    if-eqz v0, :cond_14

    .line 886
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView$SelectionNotifier;->a:Lit/sephiroth/android/library/widget/AdapterView;

    invoke-virtual {v0}, Lit/sephiroth/android/library/widget/AdapterView;->s()Landroid/widget/Adapter;

    move-result-object v0

    if-eqz v0, :cond_13

    .line 887
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView$SelectionNotifier;->a:Lit/sephiroth/android/library/widget/AdapterView;

    invoke-virtual {v0, p0}, Lit/sephiroth/android/library/widget/AdapterView;->post(Ljava/lang/Runnable;)Z

    .line 893
    :cond_13
    :goto_13
    return-void

    .line 890
    :cond_14
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView$SelectionNotifier;->a:Lit/sephiroth/android/library/widget/AdapterView;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/AdapterView;->b(Lit/sephiroth/android/library/widget/AdapterView;)V

    .line 891
    iget-object v0, p0, Lit/sephiroth/android/library/widget/AdapterView$SelectionNotifier;->a:Lit/sephiroth/android/library/widget/AdapterView;

    invoke-static {v0}, Lit/sephiroth/android/library/widget/AdapterView;->c(Lit/sephiroth/android/library/widget/AdapterView;)V

    goto :goto_13
.end method
