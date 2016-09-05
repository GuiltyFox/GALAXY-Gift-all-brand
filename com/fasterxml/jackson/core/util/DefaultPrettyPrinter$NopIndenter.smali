.class public Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$NopIndenter;
.super Ljava/lang/Object;
.source "DefaultPrettyPrinter.java"

# interfaces
.implements Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$Indenter;
.implements Ljava/io/Serializable;


# static fields
.field public static final instance:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$NopIndenter;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    .prologue
    .line 381
    new-instance v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$NopIndenter;

    invoke-direct {v0}, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$NopIndenter;-><init>()V

    sput-object v0, Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$NopIndenter;->instance:Lcom/fasterxml/jackson/core/util/DefaultPrettyPrinter$NopIndenter;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 378
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isInline()Z
    .registers 2

    .prologue
    .line 389
    const/4 v0, 0x1

    return v0
.end method

.method public writeIndentation(Lcom/fasterxml/jackson/core/JsonGenerator;I)V
    .registers 3

    .prologue
    .line 386
    return-void
.end method
