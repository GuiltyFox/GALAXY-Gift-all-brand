.class public abstract Lrx/subjects/Subject;
.super Lrx/Observable;
.source "Subject.java"

# interfaces
.implements Lrx/Observer;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Lrx/Observable",
        "<TR;>;",
        "Lrx/Observer",
        "<TT;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lrx/Observable$OnSubscribe;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/Observable$OnSubscribe",
            "<TR;>;)V"
        }
    .end annotation

    .prologue
    .line 25
    invoke-direct {p0, p1}, Lrx/Observable;-><init>(Lrx/Observable$OnSubscribe;)V

    .line 26
    return-void
.end method
