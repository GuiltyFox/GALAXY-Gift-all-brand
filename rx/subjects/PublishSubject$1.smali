.class final Lrx/subjects/PublishSubject$1;
.super Ljava/lang/Object;
.source "PublishSubject.java"

# interfaces
.implements Lrx/functions/Action1;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lrx/subjects/PublishSubject;->c()Lrx/subjects/PublishSubject;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lrx/functions/Action1",
        "<",
        "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
        "<TT;>;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lrx/subjects/SubjectSubscriptionManager;


# direct methods
.method constructor <init>(Lrx/subjects/SubjectSubscriptionManager;)V
    .registers 2

    .prologue
    .line 62
    iput-object p1, p0, Lrx/subjects/PublishSubject$1;->a:Lrx/subjects/SubjectSubscriptionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Ljava/lang/Object;)V
    .registers 2

    .prologue
    .line 62
    check-cast p1, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;

    invoke-virtual {p0, p1}, Lrx/subjects/PublishSubject$1;->a(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V

    return-void
.end method

.method public a(Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/subjects/SubjectSubscriptionManager$SubjectObserver",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 66
    iget-object v0, p0, Lrx/subjects/PublishSubject$1;->a:Lrx/subjects/SubjectSubscriptionManager;

    invoke-virtual {v0}, Lrx/subjects/SubjectSubscriptionManager;->a()Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lrx/subjects/PublishSubject$1;->a:Lrx/subjects/SubjectSubscriptionManager;

    iget-object v1, v1, Lrx/subjects/SubjectSubscriptionManager;->f:Lrx/internal/operators/NotificationLite;

    invoke-virtual {p1, v0, v1}, Lrx/subjects/SubjectSubscriptionManager$SubjectObserver;->b(Ljava/lang/Object;Lrx/internal/operators/NotificationLite;)V

    .line 67
    return-void
.end method
