.class public Lrx/exceptions/OnErrorThrowable$OnNextValue;
.super Ljava/lang/RuntimeException;
.source "OnErrorThrowable.java"


# instance fields
.field private final a:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .registers 4

    .prologue
    .line 152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "OnError while emitting onNext value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Lrx/exceptions/OnErrorThrowable$OnNextValue;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 153
    iput-object p1, p0, Lrx/exceptions/OnErrorThrowable$OnNextValue;->a:Ljava/lang/Object;

    .line 154
    return-void
.end method

.method static a(Ljava/lang/Object;)Ljava/lang/String;
    .registers 3

    .prologue
    .line 181
    if-nez p0, :cond_6

    .line 182
    const-string/jumbo p0, "null"

    .line 199
    :goto_5
    return-object p0

    .line 184
    :cond_6
    sget-object v0, Lrx/exceptions/OnErrorThrowable$OnNextValue$Primitives;->a:Ljava/util/Set;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_17

    .line 185
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    .line 187
    :cond_17
    instance-of v0, p0, Ljava/lang/String;

    if-eqz v0, :cond_1e

    .line 188
    check-cast p0, Ljava/lang/String;

    goto :goto_5

    .line 190
    :cond_1e
    instance-of v0, p0, Ljava/lang/Enum;

    if-eqz v0, :cond_29

    .line 191
    check-cast p0, Ljava/lang/Enum;

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p0

    goto :goto_5

    .line 194
    :cond_29
    invoke-static {}, Lrx/plugins/RxJavaPlugins;->a()Lrx/plugins/RxJavaPlugins;

    move-result-object v0

    invoke-virtual {v0}, Lrx/plugins/RxJavaPlugins;->b()Lrx/plugins/RxJavaErrorHandler;

    move-result-object v0

    invoke-virtual {v0, p0}, Lrx/plugins/RxJavaErrorHandler;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 195
    if-eqz v0, :cond_39

    move-object p0, v0

    .line 196
    goto :goto_5

    .line 199
    :cond_39
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string/jumbo v1, ".class"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_5
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .registers 2

    .prologue
    .line 162
    iget-object v0, p0, Lrx/exceptions/OnErrorThrowable$OnNextValue;->a:Ljava/lang/Object;

    return-object v0
.end method
