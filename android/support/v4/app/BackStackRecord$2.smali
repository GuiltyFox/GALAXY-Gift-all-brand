.class Landroid/support/v4/app/BackStackRecord$2;
.super Ljava/lang/Object;
.source "BackStackRecord.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/support/v4/app/BackStackRecord;->a(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/view/View;Ljava/lang/Object;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLjava/util/ArrayList;Ljava/lang/Object;Ljava/lang/Object;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/view/View;

.field final synthetic b:Ljava/lang/Object;

.field final synthetic c:Ljava/util/ArrayList;

.field final synthetic d:Landroid/support/v4/app/BackStackRecord$TransitionState;

.field final synthetic e:Ljava/lang/Object;

.field final synthetic f:Ljava/lang/Object;

.field final synthetic g:Z

.field final synthetic h:Landroid/support/v4/app/Fragment;

.field final synthetic i:Landroid/support/v4/app/Fragment;

.field final synthetic j:Landroid/support/v4/app/BackStackRecord;


# direct methods
.method constructor <init>(Landroid/support/v4/app/BackStackRecord;Landroid/view/View;Ljava/lang/Object;Ljava/util/ArrayList;Landroid/support/v4/app/BackStackRecord$TransitionState;Ljava/lang/Object;Ljava/lang/Object;ZLandroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;)V
    .registers 11

    .prologue
    .line 1319
    iput-object p1, p0, Landroid/support/v4/app/BackStackRecord$2;->j:Landroid/support/v4/app/BackStackRecord;

    iput-object p2, p0, Landroid/support/v4/app/BackStackRecord$2;->a:Landroid/view/View;

    iput-object p3, p0, Landroid/support/v4/app/BackStackRecord$2;->b:Ljava/lang/Object;

    iput-object p4, p0, Landroid/support/v4/app/BackStackRecord$2;->c:Ljava/util/ArrayList;

    iput-object p5, p0, Landroid/support/v4/app/BackStackRecord$2;->d:Landroid/support/v4/app/BackStackRecord$TransitionState;

    iput-object p6, p0, Landroid/support/v4/app/BackStackRecord$2;->e:Ljava/lang/Object;

    iput-object p7, p0, Landroid/support/v4/app/BackStackRecord$2;->f:Ljava/lang/Object;

    iput-boolean p8, p0, Landroid/support/v4/app/BackStackRecord$2;->g:Z

    iput-object p9, p0, Landroid/support/v4/app/BackStackRecord$2;->h:Landroid/support/v4/app/Fragment;

    iput-object p10, p0, Landroid/support/v4/app/BackStackRecord$2;->i:Landroid/support/v4/app/Fragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreDraw()Z
    .registers 8

    .prologue
    const/4 v6, 0x1

    .line 1322
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord$2;->a:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 1325
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord$2;->b:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord$2;->c:Ljava/util/ArrayList;

    invoke-static {v0, v1}, Landroid/support/v4/app/FragmentTransitionCompat21;->a(Ljava/lang/Object;Ljava/util/ArrayList;)V

    .line 1328
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord$2;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord$2;->d:Landroid/support/v4/app/BackStackRecord$TransitionState;

    iget-object v1, v1, Landroid/support/v4/app/BackStackRecord$TransitionState;->d:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 1329
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord$2;->e:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord$2;->f:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord$2;->b:Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord$2;->c:Ljava/util/ArrayList;

    const/4 v4, 0x0

    invoke-static {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentTransitionCompat21;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Z)V

    .line 1331
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord$2;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1333
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord$2;->j:Landroid/support/v4/app/BackStackRecord;

    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord$2;->d:Landroid/support/v4/app/BackStackRecord$TransitionState;

    iget-boolean v2, p0, Landroid/support/v4/app/BackStackRecord$2;->g:Z

    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord$2;->h:Landroid/support/v4/app/Fragment;

    invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/support/v4/app/BackStackRecord$TransitionState;ZLandroid/support/v4/app/Fragment;)Landroid/support/v4/util/ArrayMap;

    move-result-object v5

    .line 1335
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord$2;->b:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord$2;->d:Landroid/support/v4/app/BackStackRecord$TransitionState;

    iget-object v1, v1, Landroid/support/v4/app/BackStackRecord$TransitionState;->d:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord$2;->c:Ljava/util/ArrayList;

    invoke-static {v0, v1, v5, v2}, Landroid/support/v4/app/FragmentTransitionCompat21;->a(Ljava/lang/Object;Landroid/view/View;Ljava/util/Map;Ljava/util/ArrayList;)V

    .line 1338
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord$2;->j:Landroid/support/v4/app/BackStackRecord;

    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord$2;->d:Landroid/support/v4/app/BackStackRecord$TransitionState;

    invoke-virtual {v0, v5, v1}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/support/v4/util/ArrayMap;Landroid/support/v4/app/BackStackRecord$TransitionState;)V

    .line 1340
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord$2;->j:Landroid/support/v4/app/BackStackRecord;

    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord$2;->d:Landroid/support/v4/app/BackStackRecord$TransitionState;

    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord$2;->h:Landroid/support/v4/app/Fragment;

    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord$2;->i:Landroid/support/v4/app/Fragment;

    iget-boolean v4, p0, Landroid/support/v4/app/BackStackRecord$2;->g:Z

    invoke-virtual/range {v0 .. v5}, Landroid/support/v4/app/BackStackRecord;->a(Landroid/support/v4/app/BackStackRecord$TransitionState;Landroid/support/v4/app/Fragment;Landroid/support/v4/app/Fragment;ZLandroid/support/v4/util/ArrayMap;)V

    .line 1344
    iget-object v0, p0, Landroid/support/v4/app/BackStackRecord$2;->e:Ljava/lang/Object;

    iget-object v1, p0, Landroid/support/v4/app/BackStackRecord$2;->f:Ljava/lang/Object;

    iget-object v2, p0, Landroid/support/v4/app/BackStackRecord$2;->b:Ljava/lang/Object;

    iget-object v3, p0, Landroid/support/v4/app/BackStackRecord$2;->c:Ljava/util/ArrayList;

    invoke-static {v0, v1, v2, v3, v6}, Landroid/support/v4/app/FragmentTransitionCompat21;->a(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/util/ArrayList;Z)V

    .line 1346
    return v6
.end method
