
kernel:     file format elf64-littleriscv


Disassembly of section .text:

0000000080000000 <_entry>:
    80000000:	0000a117          	auipc	sp,0xa
    80000004:	71813103          	ld	sp,1816(sp) # 8000a718 <_GLOBAL_OFFSET_TABLE_+0x40>
    80000008:	00001537          	lui	a0,0x1
    8000000c:	f14025f3          	csrr	a1,mhartid
    80000010:	00158593          	addi	a1,a1,1
    80000014:	02b50533          	mul	a0,a0,a1
    80000018:	00a10133          	add	sp,sp,a0
    8000001c:	611050ef          	jal	ra,80005e2c <start>

0000000080000020 <spin>:
    80000020:	0000006f          	j	80000020 <spin>
	...

0000000080001000 <_ZN5Riscv14supervisorTrapEv>:
.align 4
.global _ZN5Riscv14supervisorTrapEv
.type _ZN5Riscv14supervisorTrapEv, @function
_ZN5Riscv14supervisorTrapEv:

    addi sp, sp, -256
    80001000:	f0010113          	addi	sp,sp,-256
    csrw sscratch, sp
    80001004:	14011073          	csrw	sscratch,sp
    sd x0, 0(sp)
    80001008:	00013023          	sd	zero,0(sp)
    sd x1, 8(sp)
    8000100c:	00113423          	sd	ra,8(sp)
    sd x2, 16(sp)
    80001010:	00213823          	sd	sp,16(sp)
    sd x3, 24(sp)
    80001014:	00313c23          	sd	gp,24(sp)
    sd x4, 32(sp)
    80001018:	02413023          	sd	tp,32(sp)
    sd x5, 40(sp)
    8000101c:	02513423          	sd	t0,40(sp)
    sd x6, 48(sp)
    80001020:	02613823          	sd	t1,48(sp)
    sd x7, 56(sp)
    80001024:	02713c23          	sd	t2,56(sp)
    sd x8, 64(sp)
    80001028:	04813023          	sd	s0,64(sp)
    sd x9, 72(sp)
    8000102c:	04913423          	sd	s1,72(sp)
    sd x10, 80(sp)
    80001030:	04a13823          	sd	a0,80(sp)
    sd x11, 88(sp)
    80001034:	04b13c23          	sd	a1,88(sp)
    sd x12, 96(sp)
    80001038:	06c13023          	sd	a2,96(sp)
    sd x13, 104(sp)
    8000103c:	06d13423          	sd	a3,104(sp)
    sd x14, 112(sp)
    80001040:	06e13823          	sd	a4,112(sp)
    sd x15, 120(sp)
    80001044:	06f13c23          	sd	a5,120(sp)
    sd x16, 128(sp)
    80001048:	09013023          	sd	a6,128(sp)
    sd x17, 136(sp)
    8000104c:	09113423          	sd	a7,136(sp)
    sd x18, 144(sp)
    80001050:	09213823          	sd	s2,144(sp)
    sd x19, 152(sp)
    80001054:	09313c23          	sd	s3,152(sp)
    sd x20, 160(sp)
    80001058:	0b413023          	sd	s4,160(sp)
    sd x21, 168(sp)
    8000105c:	0b513423          	sd	s5,168(sp)
    sd x22, 176(sp)
    80001060:	0b613823          	sd	s6,176(sp)
    sd x23, 184(sp)
    80001064:	0b713c23          	sd	s7,184(sp)
    sd x24, 192(sp)
    80001068:	0d813023          	sd	s8,192(sp)
    sd x25, 200(sp)
    8000106c:	0d913423          	sd	s9,200(sp)
    sd x26, 208(sp)
    80001070:	0da13823          	sd	s10,208(sp)
    sd x27, 216(sp)
    80001074:	0db13c23          	sd	s11,216(sp)
    sd x28, 224(sp)
    80001078:	0fc13023          	sd	t3,224(sp)
    sd x29, 232(sp)
    8000107c:	0fd13423          	sd	t4,232(sp)
    sd x30, 240(sp)
    80001080:	0fe13823          	sd	t5,240(sp)
    sd x31, 248(sp)
    80001084:	0ff13c23          	sd	t6,248(sp)

    call _ZN5Riscv20handleSupervisorTrapEv
    80001088:	1dc030ef          	jal	ra,80004264 <_ZN5Riscv20handleSupervisorTrapEv>

    ld x0, 0(sp)
    8000108c:	00013003          	ld	zero,0(sp)
    ld x1, 8(sp)
    80001090:	00813083          	ld	ra,8(sp)
    ld x2, 16(sp)
    80001094:	01013103          	ld	sp,16(sp)
    ld x3, 24(sp)
    80001098:	01813183          	ld	gp,24(sp)
    ld x4, 32(sp)
    8000109c:	02013203          	ld	tp,32(sp)
    ld x5, 40(sp)
    800010a0:	02813283          	ld	t0,40(sp)
    ld x6, 48(sp)
    800010a4:	03013303          	ld	t1,48(sp)
    ld x7, 56(sp)
    800010a8:	03813383          	ld	t2,56(sp)
    ld x8, 64(sp)
    800010ac:	04013403          	ld	s0,64(sp)
    ld x9, 72(sp)
    800010b0:	04813483          	ld	s1,72(sp)
    ld x10, 80(sp)
    800010b4:	05013503          	ld	a0,80(sp)
    ld x11, 88(sp)
    800010b8:	05813583          	ld	a1,88(sp)
    ld x12, 96(sp)
    800010bc:	06013603          	ld	a2,96(sp)
    ld x13, 104(sp)
    800010c0:	06813683          	ld	a3,104(sp)
    ld x14, 112(sp)
    800010c4:	07013703          	ld	a4,112(sp)
    ld x15, 120(sp)
    800010c8:	07813783          	ld	a5,120(sp)
    ld x16, 128(sp)
    800010cc:	08013803          	ld	a6,128(sp)
    ld x17, 136(sp)
    800010d0:	08813883          	ld	a7,136(sp)
    ld x18, 144(sp)
    800010d4:	09013903          	ld	s2,144(sp)
    ld x19, 152(sp)
    800010d8:	09813983          	ld	s3,152(sp)
    ld x20, 160(sp)
    800010dc:	0a013a03          	ld	s4,160(sp)
    ld x21, 168(sp)
    800010e0:	0a813a83          	ld	s5,168(sp)
    ld x22, 176(sp)
    800010e4:	0b013b03          	ld	s6,176(sp)
    ld x23, 184(sp)
    800010e8:	0b813b83          	ld	s7,184(sp)
    ld x24, 192(sp)
    800010ec:	0c013c03          	ld	s8,192(sp)
    ld x25, 200(sp)
    800010f0:	0c813c83          	ld	s9,200(sp)
    ld x26, 208(sp)
    800010f4:	0d013d03          	ld	s10,208(sp)
    ld x27, 216(sp)
    800010f8:	0d813d83          	ld	s11,216(sp)
    ld x28, 224(sp)
    800010fc:	0e013e03          	ld	t3,224(sp)
    ld x29, 232(sp)
    80001100:	0e813e83          	ld	t4,232(sp)
    ld x30, 240(sp)
    80001104:	0f013f03          	ld	t5,240(sp)
    ld x31, 248(sp)
    80001108:	0f813f83          	ld	t6,248(sp)

    addi sp, sp, 256
    8000110c:	10010113          	addi	sp,sp,256

    80001110:	10200073          	sret
	...

0000000080001120 <_ZN5Riscv13pushRegistersEv>:
.global _ZN5Riscv13pushRegistersEv
.type _ZN5Riscv13pushRegistersEv, @function
_ZN5Riscv13pushRegistersEv:
    addi sp, sp, -256
    80001120:	f0010113          	addi	sp,sp,-256
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    sd x\index, \index * 8(sp)
    .endr
    80001124:	00313c23          	sd	gp,24(sp)
    80001128:	02413023          	sd	tp,32(sp)
    8000112c:	02513423          	sd	t0,40(sp)
    80001130:	02613823          	sd	t1,48(sp)
    80001134:	02713c23          	sd	t2,56(sp)
    80001138:	04813023          	sd	s0,64(sp)
    8000113c:	04913423          	sd	s1,72(sp)
    80001140:	04a13823          	sd	a0,80(sp)
    80001144:	04b13c23          	sd	a1,88(sp)
    80001148:	06c13023          	sd	a2,96(sp)
    8000114c:	06d13423          	sd	a3,104(sp)
    80001150:	06e13823          	sd	a4,112(sp)
    80001154:	06f13c23          	sd	a5,120(sp)
    80001158:	09013023          	sd	a6,128(sp)
    8000115c:	09113423          	sd	a7,136(sp)
    80001160:	09213823          	sd	s2,144(sp)
    80001164:	09313c23          	sd	s3,152(sp)
    80001168:	0b413023          	sd	s4,160(sp)
    8000116c:	0b513423          	sd	s5,168(sp)
    80001170:	0b613823          	sd	s6,176(sp)
    80001174:	0b713c23          	sd	s7,184(sp)
    80001178:	0d813023          	sd	s8,192(sp)
    8000117c:	0d913423          	sd	s9,200(sp)
    80001180:	0da13823          	sd	s10,208(sp)
    80001184:	0db13c23          	sd	s11,216(sp)
    80001188:	0fc13023          	sd	t3,224(sp)
    8000118c:	0fd13423          	sd	t4,232(sp)
    80001190:	0fe13823          	sd	t5,240(sp)
    80001194:	0ff13c23          	sd	t6,248(sp)
    ret
    80001198:	00008067          	ret

000000008000119c <_ZN5Riscv12popRegistersEv>:
.global _ZN5Riscv12popRegistersEv
.type _ZN5Riscv12popRegistersEv, @function
_ZN5Riscv12popRegistersEv:
    .irp index, 3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31
    ld x\index, \index * 8(sp)
    .endr
    8000119c:	01813183          	ld	gp,24(sp)
    800011a0:	02013203          	ld	tp,32(sp)
    800011a4:	02813283          	ld	t0,40(sp)
    800011a8:	03013303          	ld	t1,48(sp)
    800011ac:	03813383          	ld	t2,56(sp)
    800011b0:	04013403          	ld	s0,64(sp)
    800011b4:	04813483          	ld	s1,72(sp)
    800011b8:	05013503          	ld	a0,80(sp)
    800011bc:	05813583          	ld	a1,88(sp)
    800011c0:	06013603          	ld	a2,96(sp)
    800011c4:	06813683          	ld	a3,104(sp)
    800011c8:	07013703          	ld	a4,112(sp)
    800011cc:	07813783          	ld	a5,120(sp)
    800011d0:	08013803          	ld	a6,128(sp)
    800011d4:	08813883          	ld	a7,136(sp)
    800011d8:	09013903          	ld	s2,144(sp)
    800011dc:	09813983          	ld	s3,152(sp)
    800011e0:	0a013a03          	ld	s4,160(sp)
    800011e4:	0a813a83          	ld	s5,168(sp)
    800011e8:	0b013b03          	ld	s6,176(sp)
    800011ec:	0b813b83          	ld	s7,184(sp)
    800011f0:	0c013c03          	ld	s8,192(sp)
    800011f4:	0c813c83          	ld	s9,200(sp)
    800011f8:	0d013d03          	ld	s10,208(sp)
    800011fc:	0d813d83          	ld	s11,216(sp)
    80001200:	0e013e03          	ld	t3,224(sp)
    80001204:	0e813e83          	ld	t4,232(sp)
    80001208:	0f013f03          	ld	t5,240(sp)
    8000120c:	0f813f83          	ld	t6,248(sp)
    addi sp, sp, 256
    80001210:	10010113          	addi	sp,sp,256
    ret
    80001214:	00008067          	ret

0000000080001218 <copy_and_swap>:
# a1 holds expected value
# a2 holds desired value
# a0 holds return value, 0 if successful, !0 otherwise
.global copy_and_swap
copy_and_swap:
    lr.w t0, (a0)          # Load original value.
    80001218:	100522af          	lr.w	t0,(a0)
    bne t0, a1, fail       # Doesn’t match, so fail.
    8000121c:	00b29a63          	bne	t0,a1,80001230 <fail>
    sc.w t0, a2, (a0)      # Try to update.
    80001220:	18c522af          	sc.w	t0,a2,(a0)
    bnez t0, copy_and_swap # Retry if store-conditional failed.
    80001224:	fe029ae3          	bnez	t0,80001218 <copy_and_swap>
    li a0, 0               # Set return to success.
    80001228:	00000513          	li	a0,0
    jr ra                  # Return.
    8000122c:	00008067          	ret

0000000080001230 <fail>:
    fail:
    li a0, 1               # Set return to failure.
    80001230:	00100513          	li	a0,1
    80001234:	00008067          	ret

0000000080001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>:
.global _ZN3PCB13contextSwitchEPNS_7ContextES1_
.type _ZN3PCB13contextSwitchEPNS_7ContextES1_, @function
_ZN3PCB13contextSwitchEPNS_7ContextES1_:
    #a0 - &old->Context
    #a1 - &running->Context
    sd sp, 0 * 8(a0)
    80001238:	00253023          	sd	sp,0(a0) # 1000 <_entry-0x7ffff000>
    sd ra, 1 * 8(a0)
    8000123c:	00153423          	sd	ra,8(a0)

    ld sp, 0 * 8(a1)
    80001240:	0005b103          	ld	sp,0(a1)
    ld ra, 1 * 8(a1)
    80001244:	0085b083          	ld	ra,8(a1)

    ret
    80001248:	00008067          	ret

000000008000124c <_ZN3PCB20contextSwitchExitingEPNS_7ContextE>:

.global _ZN3PCB20contextSwitchExitingEPNS_7ContextE
.type _ZN3PCB20contextSwitchExitingEPNS_7ContextE, @function
_ZN3PCB20contextSwitchExitingEPNS_7ContextE:
    #a0 - &running->Context
    ld sp, 0 * 8(a0)
    8000124c:	00053103          	ld	sp,0(a0)
    ld ra, 1 * 8(a0)
    80001250:	00853083          	ld	ra,8(a0)

    80001254:	00008067          	ret

0000000080001258 <_Z6strcpyPKcPc>:
//singleton slab allocator
static slab_allocator_t* slabAllocator = nullptr;

//helping functions
void strcpy(const char* src, char* dst)
{
    80001258:	ff010113          	addi	sp,sp,-16
    8000125c:	00813423          	sd	s0,8(sp)
    80001260:	01010413          	addi	s0,sp,16
    while(*src != '\0')
    80001264:	00054783          	lbu	a5,0(a0)
    80001268:	00078863          	beqz	a5,80001278 <_Z6strcpyPKcPc+0x20>
    {
        *dst = *src;
    8000126c:	00f58023          	sb	a5,0(a1)
        src++;
    80001270:	00150513          	addi	a0,a0,1
    while(*src != '\0')
    80001274:	ff1ff06f          	j	80001264 <_Z6strcpyPKcPc+0xc>
    }
}
    80001278:	00813403          	ld	s0,8(sp)
    8000127c:	01010113          	addi	sp,sp,16
    80001280:	00008067          	ret

0000000080001284 <_Z19slab_allocator_initP14buddyAllocator>:

slab_allocator_t* slab_allocator_init(buddyAllocator *buddy)
{
    80001284:	fe010113          	addi	sp,sp,-32
    80001288:	00113c23          	sd	ra,24(sp)
    8000128c:	00813823          	sd	s0,16(sp)
    80001290:	00913423          	sd	s1,8(sp)
    80001294:	01213023          	sd	s2,0(sp)
    80001298:	02010413          	addi	s0,sp,32
    8000129c:	00050493          	mv	s1,a0
    slab_allocator_t* slabAllocatorLocal = (slab_allocator_t*)(buddy + 1);
    800012a0:	0e050913          	addi	s2,a0,224

    slabAllocatorLocal->buddy = buddy;
    800012a4:	0ea53023          	sd	a0,224(a0)
    slabAllocatorLocal->cacheList = nullptr;
    800012a8:	0e053423          	sd	zero,232(a0)
    for(size_t i = 0; i < CACHE_BUFFER_SIZE;i++)
    800012ac:	00000713          	li	a4,0
    800012b0:	0180006f          	j	800012c8 <_Z19slab_allocator_initP14buddyAllocator+0x44>
        slabAllocatorLocal->cachesBuffers[i] = nullptr;
    800012b4:	00270793          	addi	a5,a4,2
    800012b8:	00379793          	slli	a5,a5,0x3
    800012bc:	00f487b3          	add	a5,s1,a5
    800012c0:	0e07b023          	sd	zero,224(a5)
    for(size_t i = 0; i < CACHE_BUFFER_SIZE;i++)
    800012c4:	00170713          	addi	a4,a4,1
    800012c8:	00c00793          	li	a5,12
    800012cc:	fee7f4e3          	bgeu	a5,a4,800012b4 <_Z19slab_allocator_initP14buddyAllocator+0x30>

    strcpy("Cache of caches", slabAllocatorLocal->cacheOfCaches.cacheName);
    800012d0:	15848593          	addi	a1,s1,344
    800012d4:	00007517          	auipc	a0,0x7
    800012d8:	d4c50513          	addi	a0,a0,-692 # 80008020 <CONSOLE_STATUS+0x10>
    800012dc:	00000097          	auipc	ra,0x0
    800012e0:	f7c080e7          	jalr	-132(ra) # 80001258 <_Z6strcpyPKcPc>
    slabAllocatorLocal->cacheOfCaches.next = nullptr;
    800012e4:	3404bc23          	sd	zero,856(s1)
    slabAllocatorLocal->cacheOfCaches.prev = nullptr;
    800012e8:	3604b023          	sd	zero,864(s1)
    slabAllocatorLocal->cacheOfCaches.ctor = nullptr;
    800012ec:	3804b823          	sd	zero,912(s1)
    slabAllocatorLocal->cacheOfCaches.dtor = nullptr;
    800012f0:	3804bc23          	sd	zero,920(s1)
    slabAllocatorLocal->cacheOfCaches.slabs_empty = nullptr;
    800012f4:	3604b423          	sd	zero,872(s1)
    slabAllocatorLocal->cacheOfCaches.slabs_full = nullptr;
    800012f8:	3604b823          	sd	zero,880(s1)
    slabAllocatorLocal->cacheOfCaches.slabs_partial = nullptr;
    800012fc:	3604bc23          	sd	zero,888(s1)
    slabAllocatorLocal->cacheOfCaches.slab_size = CACHE_OF_CACHES_SLAB_SIZE;
    80001300:	00200793          	li	a5,2
    80001304:	38f4b023          	sd	a5,896(s1)
    slabAllocatorLocal->cacheOfCaches.obj_size = sizeof(kmem_cache_t);
    80001308:	24800793          	li	a5,584
    8000130c:	38f4b423          	sd	a5,904(s1)
    return slabAllocatorLocal;
}
    80001310:	00090513          	mv	a0,s2
    80001314:	01813083          	ld	ra,24(sp)
    80001318:	01013403          	ld	s0,16(sp)
    8000131c:	00813483          	ld	s1,8(sp)
    80001320:	00013903          	ld	s2,0(sp)
    80001324:	02010113          	addi	sp,sp,32
    80001328:	00008067          	ret

000000008000132c <_Z14allocateObjectP6slab_s>:

void* allocateObject(slab_t* slab)
{
    8000132c:	ff010113          	addi	sp,sp,-16
    80001330:	00813423          	sd	s0,8(sp)
    80001334:	01010413          	addi	s0,sp,16
    80001338:	00050593          	mv	a1,a0
    int index = -1;
    void* addr = nullptr;
    for(size_t i = 0;i < slab->numOfObjects;i++)
    8000133c:	00000793          	li	a5,0
    80001340:	0185b703          	ld	a4,24(a1)
    80001344:	04e7f663          	bgeu	a5,a4,80001390 <_Z14allocateObjectP6slab_s+0x64>
    {
        size_t mask = 1 << (i%8);
    80001348:	0077f713          	andi	a4,a5,7
    8000134c:	00100613          	li	a2,1
    80001350:	00e616bb          	sllw	a3,a2,a4
        if((uint8)slab->allocated[i/8] & mask)
    80001354:	0037d713          	srli	a4,a5,0x3
    80001358:	00e58733          	add	a4,a1,a4
    8000135c:	03074703          	lbu	a4,48(a4)
    80001360:	00d77733          	and	a4,a4,a3
    80001364:	00071663          	bnez	a4,80001370 <_Z14allocateObjectP6slab_s+0x44>
    for(size_t i = 0;i < slab->numOfObjects;i++)
    80001368:	00178793          	addi	a5,a5,1
    8000136c:	fd5ff06f          	j	80001340 <_Z14allocateObjectP6slab_s+0x14>
        {
            addr = (void*)((size_t)slab->startAddress + sizeof(slab_t)+ i*slab->owner->obj_size);
    80001370:	0285b503          	ld	a0,40(a1)
    80001374:	0105b703          	ld	a4,16(a1)
    80001378:	23073703          	ld	a4,560(a4)
    8000137c:	02f70733          	mul	a4,a4,a5
    80001380:	00e50533          	add	a0,a0,a4
    80001384:	05050513          	addi	a0,a0,80
            index = i;
    80001388:	0007879b          	sext.w	a5,a5
            break;
    8000138c:	00c0006f          	j	80001398 <_Z14allocateObjectP6slab_s+0x6c>
    void* addr = nullptr;
    80001390:	00000513          	li	a0,0
    int index = -1;
    80001394:	fff00793          	li	a5,-1
        }
    }
    if(addr == nullptr)
    80001398:	04050063          	beqz	a0,800013d8 <_Z14allocateObjectP6slab_s+0xac>
        return nullptr;

    slab->allocated[index / 8]=(uint8)slab->allocated[index/8] | (1 << (index%8));
    8000139c:	41f7d69b          	sraiw	a3,a5,0x1f
    800013a0:	01d6d69b          	srliw	a3,a3,0x1d
    800013a4:	00f687bb          	addw	a5,a3,a5
    800013a8:	4037d71b          	sraiw	a4,a5,0x3
    800013ac:	00e58733          	add	a4,a1,a4
    800013b0:	03070603          	lb	a2,48(a4)
    800013b4:	0077f793          	andi	a5,a5,7
    800013b8:	40d787bb          	subw	a5,a5,a3
    800013bc:	00100693          	li	a3,1
    800013c0:	00f697bb          	sllw	a5,a3,a5
    800013c4:	00f667b3          	or	a5,a2,a5
    800013c8:	02f70823          	sb	a5,48(a4)
    slab->numOfAllocatedObjects++;
    800013cc:	0205b783          	ld	a5,32(a1)
    800013d0:	00178793          	addi	a5,a5,1
    800013d4:	02f5b023          	sd	a5,32(a1)

    return addr;
}
    800013d8:	00813403          	ld	s0,8(sp)
    800013dc:	01010113          	addi	sp,sp,16
    800013e0:	00008067          	ret

00000000800013e4 <_Z4fullP6slab_s>:
bool full(slab_t* slab)
{
    800013e4:	ff010113          	addi	sp,sp,-16
    800013e8:	00813423          	sd	s0,8(sp)
    800013ec:	01010413          	addi	s0,sp,16
    return slab->numOfAllocatedObjects == slab->numOfObjects;
    800013f0:	02053783          	ld	a5,32(a0)
    800013f4:	01853503          	ld	a0,24(a0)
    800013f8:	40f50533          	sub	a0,a0,a5
}
    800013fc:	00153513          	seqz	a0,a0
    80001400:	00813403          	ld	s0,8(sp)
    80001404:	01010113          	addi	sp,sp,16
    80001408:	00008067          	ret

000000008000140c <_Z5emptyP6slab_s>:

bool empty(slab_t* slab)
{
    8000140c:	ff010113          	addi	sp,sp,-16
    80001410:	00813423          	sd	s0,8(sp)
    80001414:	01010413          	addi	s0,sp,16
    return slab->numOfAllocatedObjects == 0;
    80001418:	02053503          	ld	a0,32(a0)
}
    8000141c:	00153513          	seqz	a0,a0
    80001420:	00813403          	ld	s0,8(sp)
    80001424:	01010113          	addi	sp,sp,16
    80001428:	00008067          	ret

000000008000142c <_Z16putPartialToFullP12kmem_cache_s>:

void putPartialToFull(kmem_cache_t* cachep)
{
    8000142c:	ff010113          	addi	sp,sp,-16
    80001430:	00813423          	sd	s0,8(sp)
    80001434:	01010413          	addi	s0,sp,16
    slab_t* slab = cachep->slabs_partial;
    80001438:	22053783          	ld	a5,544(a0)
    cachep->slabs_partial = cachep->slabs_partial->next;
    8000143c:	0087b703          	ld	a4,8(a5)
    80001440:	22e53023          	sd	a4,544(a0)
    if(cachep->slabs_partial!=nullptr)
    80001444:	00070463          	beqz	a4,8000144c <_Z16putPartialToFullP12kmem_cache_s+0x20>
        cachep->slabs_partial = nullptr;
    80001448:	22053023          	sd	zero,544(a0)
    slab->next = cachep->slabs_full;
    8000144c:	21853703          	ld	a4,536(a0)
    80001450:	00e7b423          	sd	a4,8(a5)
    if(cachep->slabs_full != nullptr)
    80001454:	21853703          	ld	a4,536(a0)
    80001458:	00070463          	beqz	a4,80001460 <_Z16putPartialToFullP12kmem_cache_s+0x34>
        cachep->slabs_full->prev = slab;
    8000145c:	00f73023          	sd	a5,0(a4)
    cachep->slabs_full = slab;
    80001460:	20f53c23          	sd	a5,536(a0)
    slab->prev = nullptr;
    80001464:	0007b023          	sd	zero,0(a5)
}
    80001468:	00813403          	ld	s0,8(sp)
    8000146c:	01010113          	addi	sp,sp,16
    80001470:	00008067          	ret

0000000080001474 <_Z17putEmptyToPartialP12kmem_cache_s>:

void putEmptyToPartial(kmem_cache_t* cachep)
{
    80001474:	ff010113          	addi	sp,sp,-16
    80001478:	00813423          	sd	s0,8(sp)
    8000147c:	01010413          	addi	s0,sp,16
    slab_t* slab = cachep->slabs_empty;
    80001480:	21053783          	ld	a5,528(a0)
    cachep->slabs_empty = cachep->slabs_empty->next;
    80001484:	0087b703          	ld	a4,8(a5)
    80001488:	20e53823          	sd	a4,528(a0)
    if(cachep->slabs_empty != nullptr)
    8000148c:	00070463          	beqz	a4,80001494 <_Z17putEmptyToPartialP12kmem_cache_s+0x20>
        cachep->slabs_empty = nullptr;
    80001490:	20053823          	sd	zero,528(a0)
    slab->next = cachep->slabs_partial;
    80001494:	22053703          	ld	a4,544(a0)
    80001498:	00e7b423          	sd	a4,8(a5)
    if(cachep->slabs_partial != nullptr)
    8000149c:	22053703          	ld	a4,544(a0)
    800014a0:	00070463          	beqz	a4,800014a8 <_Z17putEmptyToPartialP12kmem_cache_s+0x34>
        cachep->slabs_partial->prev = slab;
    800014a4:	00f73023          	sd	a5,0(a4)
    cachep->slabs_partial = slab;
    800014a8:	22f53023          	sd	a5,544(a0)
    slab->prev = nullptr;
    800014ac:	0007b023          	sd	zero,0(a5)
}
    800014b0:	00813403          	ld	s0,8(sp)
    800014b4:	01010113          	addi	sp,sp,16
    800014b8:	00008067          	ret

00000000800014bc <_Z12allocateSlabP12kmem_cache_s>:

void allocateSlab(kmem_cache_t* cachep)
{
    800014bc:	fe010113          	addi	sp,sp,-32
    800014c0:	00113c23          	sd	ra,24(sp)
    800014c4:	00813823          	sd	s0,16(sp)
    800014c8:	00913423          	sd	s1,8(sp)
    800014cc:	02010413          	addi	s0,sp,32
    800014d0:	00050493          	mv	s1,a0
    slab_t* newSlab = (slab_t*)buddy_alloc(slabAllocator->buddy,cachep->slab_size*BLOCK_SIZE);
    800014d4:	22853583          	ld	a1,552(a0)
    800014d8:	00c59593          	slli	a1,a1,0xc
    800014dc:	00009797          	auipc	a5,0x9
    800014e0:	2c47b783          	ld	a5,708(a5) # 8000a7a0 <_ZL13slabAllocator>
    800014e4:	0007b503          	ld	a0,0(a5)
    800014e8:	00001097          	auipc	ra,0x1
    800014ec:	494080e7          	jalr	1172(ra) # 8000297c <_Z11buddy_allocP14buddyAllocatorm>
    newSlab->next = cachep->slabs_empty;
    800014f0:	2104b783          	ld	a5,528(s1)
    800014f4:	00f53423          	sd	a5,8(a0)
    if(cachep->slabs_empty != nullptr)
    800014f8:	00078463          	beqz	a5,80001500 <_Z12allocateSlabP12kmem_cache_s+0x44>
        cachep->slabs_empty->prev = newSlab;
    800014fc:	00a7b023          	sd	a0,0(a5)
    cachep->slabs_empty = newSlab;
    80001500:	20a4b823          	sd	a0,528(s1)
    newSlab->prev = nullptr;
    80001504:	00053023          	sd	zero,0(a0)
    newSlab->numOfAllocatedObjects = 0;
    80001508:	02053023          	sd	zero,32(a0)
    newSlab->owner = cachep;
    8000150c:	00953823          	sd	s1,16(a0)
    newSlab->startAddress = (void*)newSlab;
    80001510:	02a53423          	sd	a0,40(a0)
    size_t sizeInBytes = cachep->slab_size*BLOCK_SIZE;
    80001514:	2284b683          	ld	a3,552(s1)
    80001518:	00c69693          	slli	a3,a3,0xc
    newSlab->numOfObjects = (sizeInBytes - sizeof(slab_t)) / cachep->obj_size; // TODO can this param be in cache ?
    8000151c:	fb068693          	addi	a3,a3,-80
    80001520:	2304b783          	ld	a5,560(s1)
    80001524:	02f6d6b3          	divu	a3,a3,a5
    80001528:	00d53c23          	sd	a3,24(a0)
    for(size_t i = 0; i < newSlab->numOfObjects / 8;i++)
    8000152c:	00000793          	li	a5,0
    80001530:	0036d713          	srli	a4,a3,0x3
    80001534:	00e7fa63          	bgeu	a5,a4,80001548 <_Z12allocateSlabP12kmem_cache_s+0x8c>
        newSlab->allocated[i] = 0;
    80001538:	00f50733          	add	a4,a0,a5
    8000153c:	02070823          	sb	zero,48(a4)
    for(size_t i = 0; i < newSlab->numOfObjects / 8;i++)
    80001540:	00178793          	addi	a5,a5,1
    80001544:	fedff06f          	j	80001530 <_Z12allocateSlabP12kmem_cache_s+0x74>
}
    80001548:	01813083          	ld	ra,24(sp)
    8000154c:	01013403          	ld	s0,16(sp)
    80001550:	00813483          	ld	s1,8(sp)
    80001554:	02010113          	addi	sp,sp,32
    80001558:	00008067          	ret

000000008000155c <_Z18getOptimalSlabSizem>:

size_t getOptimalSlabSize(size_t obj_size)
{
    8000155c:	ff010113          	addi	sp,sp,-16
    80001560:	00813423          	sd	s0,8(sp)
    80001564:	01010413          	addi	s0,sp,16
    size_t bestSize = BLOCK_SIZE;
    80001568:	000017b7          	lui	a5,0x1
    while(bestSize < obj_size + sizeof(slab_t))
    8000156c:	05050713          	addi	a4,a0,80
    80001570:	00e7f663          	bgeu	a5,a4,8000157c <_Z18getOptimalSlabSizem+0x20>
        bestSize<<=1;
    80001574:	00179793          	slli	a5,a5,0x1
    while(bestSize < obj_size + sizeof(slab_t))
    80001578:	ff5ff06f          	j	8000156c <_Z18getOptimalSlabSizem+0x10>
    size_t optimalWaste = (bestSize - sizeof(slab_t)) % obj_size;
    8000157c:	fb078593          	addi	a1,a5,-80 # fb0 <_entry-0x7ffff050>
    80001580:	02a5f5b3          	remu	a1,a1,a0

    for(int i = 1;i<=4;i++) //change constants
    80001584:	00100713          	li	a4,1
    80001588:	0080006f          	j	80001590 <_Z18getOptimalSlabSizem+0x34>
    8000158c:	0017071b          	addiw	a4,a4,1
    80001590:	00400693          	li	a3,4
    80001594:	02e6c063          	blt	a3,a4,800015b4 <_Z18getOptimalSlabSizem+0x58>
    {
        size_t newSize = bestSize << i;
    80001598:	00e79633          	sll	a2,a5,a4
        size_t newWaste = (newSize - sizeof(slab_t)) % obj_size;
    8000159c:	fb060693          	addi	a3,a2,-80
    800015a0:	02a6f6b3          	remu	a3,a3,a0
        if(newWaste < optimalWaste)
    800015a4:	feb6f4e3          	bgeu	a3,a1,8000158c <_Z18getOptimalSlabSizem+0x30>
        {
            optimalWaste = newWaste;
    800015a8:	00068593          	mv	a1,a3
            bestSize = newSize;
    800015ac:	00060793          	mv	a5,a2
    800015b0:	fddff06f          	j	8000158c <_Z18getOptimalSlabSizem+0x30>
        }
    }

    return bestSize / BLOCK_SIZE;
}
    800015b4:	00c7d513          	srli	a0,a5,0xc
    800015b8:	00813403          	ld	s0,8(sp)
    800015bc:	01010113          	addi	sp,sp,16
    800015c0:	00008067          	ret

00000000800015c4 <_Z8findSlabP12kmem_cache_sPKv>:

//finds the slab where objp is
slab_t* findSlab(kmem_cache_t* cachep, const void* objp)
{
    800015c4:	ff010113          	addi	sp,sp,-16
    800015c8:	00813423          	sd	s0,8(sp)
    800015cc:	01010413          	addi	s0,sp,16
    800015d0:	00050693          	mv	a3,a0
    slab_t* slab = cachep->slabs_full;
    800015d4:	21853503          	ld	a0,536(a0)
    800015d8:	0080006f          	j	800015e0 <_Z8findSlabP12kmem_cache_sPKv+0x1c>
    while(slab != nullptr)
    {
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
            return slab;
        slab = slab->next;
    800015dc:	00853503          	ld	a0,8(a0)
    while(slab != nullptr)
    800015e0:	02050863          	beqz	a0,80001610 <_Z8findSlabP12kmem_cache_sPKv+0x4c>
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
    800015e4:	01853783          	ld	a5,24(a0)
    800015e8:	01053703          	ld	a4,16(a0)
    800015ec:	23073703          	ld	a4,560(a4)
    800015f0:	02e787b3          	mul	a5,a5,a4
    800015f4:	00a787b3          	add	a5,a5,a0
    800015f8:	05078793          	addi	a5,a5,80
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
    800015fc:	feb570e3          	bgeu	a0,a1,800015dc <_Z8findSlabP12kmem_cache_sPKv+0x18>
    80001600:	fcf5fee3          	bgeu	a1,a5,800015dc <_Z8findSlabP12kmem_cache_sPKv+0x18>
            return slab;
        slab = slab->next;
    }

    return nullptr;
}
    80001604:	00813403          	ld	s0,8(sp)
    80001608:	01010113          	addi	sp,sp,16
    8000160c:	00008067          	ret
    slab = cachep->slabs_partial;
    80001610:	2206b503          	ld	a0,544(a3)
    80001614:	0080006f          	j	8000161c <_Z8findSlabP12kmem_cache_sPKv+0x58>
        slab = slab->next;
    80001618:	00853503          	ld	a0,8(a0)
    while(slab != nullptr)
    8000161c:	fe0504e3          	beqz	a0,80001604 <_Z8findSlabP12kmem_cache_sPKv+0x40>
        size_t endAddr = (size_t)slab + sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
    80001620:	01853783          	ld	a5,24(a0)
    80001624:	01053703          	ld	a4,16(a0)
    80001628:	23073703          	ld	a4,560(a4)
    8000162c:	02e787b3          	mul	a5,a5,a4
    80001630:	00a787b3          	add	a5,a5,a0
    80001634:	05078793          	addi	a5,a5,80
        if((size_t)objp > (size_t)slab && (size_t)objp < endAddr)
    80001638:	feb570e3          	bgeu	a0,a1,80001618 <_Z8findSlabP12kmem_cache_sPKv+0x54>
    8000163c:	fcf5fee3          	bgeu	a1,a5,80001618 <_Z8findSlabP12kmem_cache_sPKv+0x54>
    80001640:	fc5ff06f          	j	80001604 <_Z8findSlabP12kmem_cache_sPKv+0x40>

0000000080001644 <_Z19resetAllocatedIndexP6slab_si>:

void resetAllocatedIndex(slab_t* slab, int index)
{
    80001644:	ff010113          	addi	sp,sp,-16
    80001648:	00813423          	sd	s0,8(sp)
    8000164c:	01010413          	addi	s0,sp,16
    //TODO test it
    slab->allocated[index / 8]=(uint8)slab->allocated[index/8] & ~(1 << (index%8));
    80001650:	41f5d79b          	sraiw	a5,a1,0x1f
    80001654:	01d7d79b          	srliw	a5,a5,0x1d
    80001658:	00b785bb          	addw	a1,a5,a1
    8000165c:	4035d71b          	sraiw	a4,a1,0x3
    80001660:	00e50533          	add	a0,a0,a4
    80001664:	03050703          	lb	a4,48(a0)
    80001668:	0075f593          	andi	a1,a1,7
    8000166c:	40f585bb          	subw	a1,a1,a5
    80001670:	00100793          	li	a5,1
    80001674:	00b795bb          	sllw	a1,a5,a1
    80001678:	fff5c593          	not	a1,a1
    8000167c:	00b775b3          	and	a1,a4,a1
    80001680:	02b50823          	sb	a1,48(a0)
}
    80001684:	00813403          	ld	s0,8(sp)
    80001688:	01010113          	addi	sp,sp,16
    8000168c:	00008067          	ret

0000000080001690 <_Z14removeFullSlabP12kmem_cache_sP6slab_s>:

void removeFullSlab(kmem_cache_t * cachep, slab_t* slab)
{
    80001690:	ff010113          	addi	sp,sp,-16
    80001694:	00813423          	sd	s0,8(sp)
    80001698:	01010413          	addi	s0,sp,16
    if(slab->prev)
    8000169c:	0005b783          	ld	a5,0(a1)
    800016a0:	04078063          	beqz	a5,800016e0 <_Z14removeFullSlabP12kmem_cache_sP6slab_s+0x50>
    {
        slab->prev->next = slab->next;
    800016a4:	0085b703          	ld	a4,8(a1)
    800016a8:	00e7b423          	sd	a4,8(a5)
        slab->next->prev = slab->prev;
    800016ac:	0085b783          	ld	a5,8(a1)
    800016b0:	0005b703          	ld	a4,0(a1)
    800016b4:	00e7b023          	sd	a4,0(a5)
    else
    {
        slab->next->prev = nullptr;
        cachep->slabs_full = slab->next;
    }
    slab->next = cachep->slabs_partial;
    800016b8:	22053783          	ld	a5,544(a0)
    800016bc:	00f5b423          	sd	a5,8(a1)
    slab->prev = nullptr;
    800016c0:	0005b023          	sd	zero,0(a1)
    if(cachep->slabs_partial)
    800016c4:	22053783          	ld	a5,544(a0)
    800016c8:	00078463          	beqz	a5,800016d0 <_Z14removeFullSlabP12kmem_cache_sP6slab_s+0x40>
        cachep->slabs_partial->prev = slab;
    800016cc:	00b7b023          	sd	a1,0(a5)
    cachep->slabs_partial = slab;
    800016d0:	22b53023          	sd	a1,544(a0)
}
    800016d4:	00813403          	ld	s0,8(sp)
    800016d8:	01010113          	addi	sp,sp,16
    800016dc:	00008067          	ret
        slab->next->prev = nullptr;
    800016e0:	0085b783          	ld	a5,8(a1)
    800016e4:	0007b023          	sd	zero,0(a5)
        cachep->slabs_full = slab->next;
    800016e8:	0085b783          	ld	a5,8(a1)
    800016ec:	20f53c23          	sd	a5,536(a0)
    800016f0:	fc9ff06f          	j	800016b8 <_Z14removeFullSlabP12kmem_cache_sP6slab_s+0x28>

00000000800016f4 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>:

void removePartialSlab(kmem_cache_t * cachep, slab_t* slab)
{
    800016f4:	ff010113          	addi	sp,sp,-16
    800016f8:	00813423          	sd	s0,8(sp)
    800016fc:	01010413          	addi	s0,sp,16
    if(slab->prev)
    80001700:	0005b783          	ld	a5,0(a1)
    80001704:	04078063          	beqz	a5,80001744 <_Z17removePartialSlabP12kmem_cache_sP6slab_s+0x50>
    {
        slab->prev->next = slab->next;
    80001708:	0085b703          	ld	a4,8(a1)
    8000170c:	00e7b423          	sd	a4,8(a5)
        slab->next->prev = slab->prev;
    80001710:	0085b783          	ld	a5,8(a1)
    80001714:	0005b703          	ld	a4,0(a1)
    80001718:	00e7b023          	sd	a4,0(a5)
    else
    {
        slab->next->prev = nullptr;
        cachep->slabs_partial = slab->next;
    }
    slab->next = cachep->slabs_empty;
    8000171c:	21053783          	ld	a5,528(a0)
    80001720:	00f5b423          	sd	a5,8(a1)
    slab->prev = nullptr;
    80001724:	0005b023          	sd	zero,0(a1)
    if(cachep->slabs_empty)
    80001728:	21053783          	ld	a5,528(a0)
    8000172c:	00078463          	beqz	a5,80001734 <_Z17removePartialSlabP12kmem_cache_sP6slab_s+0x40>
        cachep->slabs_empty->prev = slab;
    80001730:	00b7b023          	sd	a1,0(a5)
    cachep->slabs_empty = slab;
    80001734:	20b53823          	sd	a1,528(a0)
}
    80001738:	00813403          	ld	s0,8(sp)
    8000173c:	01010113          	addi	sp,sp,16
    80001740:	00008067          	ret
        slab->next->prev = nullptr;
    80001744:	0085b783          	ld	a5,8(a1)
    80001748:	0007b023          	sd	zero,0(a5)
        cachep->slabs_partial = slab->next;
    8000174c:	0085b783          	ld	a5,8(a1)
    80001750:	22f53023          	sd	a5,544(a0)
    80001754:	fc9ff06f          	j	8000171c <_Z17removePartialSlabP12kmem_cache_sP6slab_s+0x28>

0000000080001758 <_Z13printSlabInfoP6slab_s>:

void printSlabInfo(slab_t* slab)
{
    80001758:	fe010113          	addi	sp,sp,-32
    8000175c:	00113c23          	sd	ra,24(sp)
    80001760:	00813823          	sd	s0,16(sp)
    80001764:	00913423          	sd	s1,8(sp)
    80001768:	02010413          	addi	s0,sp,32
    8000176c:	00050493          	mv	s1,a0
    KConsole::trapPrintString("Slab address ");
    80001770:	00007517          	auipc	a0,0x7
    80001774:	8c050513          	addi	a0,a0,-1856 # 80008030 <CONSOLE_STATUS+0x20>
    80001778:	00002097          	auipc	ra,0x2
    8000177c:	d60080e7          	jalr	-672(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt((size_t)slab);KConsole::trapPrintString("\n");
    80001780:	00000613          	li	a2,0
    80001784:	00a00593          	li	a1,10
    80001788:	00048513          	mv	a0,s1
    8000178c:	00002097          	auipc	ra,0x2
    80001790:	d90080e7          	jalr	-624(ra) # 8000351c <_ZN8KConsole12trapPrintIntEmii>
    80001794:	00007517          	auipc	a0,0x7
    80001798:	e6c50513          	addi	a0,a0,-404 # 80008600 <CONSOLE_STATUS+0x5f0>
    8000179c:	00002097          	auipc	ra,0x2
    800017a0:	d3c080e7          	jalr	-708(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Number of allocated objects ");
    800017a4:	00007517          	auipc	a0,0x7
    800017a8:	89c50513          	addi	a0,a0,-1892 # 80008040 <CONSOLE_STATUS+0x30>
    800017ac:	00002097          	auipc	ra,0x2
    800017b0:	d2c080e7          	jalr	-724(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(slab->numOfAllocatedObjects);KConsole::trapPrintString("\n");
    800017b4:	00000613          	li	a2,0
    800017b8:	00a00593          	li	a1,10
    800017bc:	0204b503          	ld	a0,32(s1)
    800017c0:	00002097          	auipc	ra,0x2
    800017c4:	d5c080e7          	jalr	-676(ra) # 8000351c <_ZN8KConsole12trapPrintIntEmii>
    800017c8:	00007517          	auipc	a0,0x7
    800017cc:	e3850513          	addi	a0,a0,-456 # 80008600 <CONSOLE_STATUS+0x5f0>
    800017d0:	00002097          	auipc	ra,0x2
    800017d4:	d08080e7          	jalr	-760(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Number of objects ");
    800017d8:	00007517          	auipc	a0,0x7
    800017dc:	88850513          	addi	a0,a0,-1912 # 80008060 <CONSOLE_STATUS+0x50>
    800017e0:	00002097          	auipc	ra,0x2
    800017e4:	cf8080e7          	jalr	-776(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(slab->numOfObjects);KConsole::trapPrintString("\n");
    800017e8:	00000613          	li	a2,0
    800017ec:	00a00593          	li	a1,10
    800017f0:	0184b503          	ld	a0,24(s1)
    800017f4:	00002097          	auipc	ra,0x2
    800017f8:	d28080e7          	jalr	-728(ra) # 8000351c <_ZN8KConsole12trapPrintIntEmii>
    800017fc:	00007517          	auipc	a0,0x7
    80001800:	e0450513          	addi	a0,a0,-508 # 80008600 <CONSOLE_STATUS+0x5f0>
    80001804:	00002097          	auipc	ra,0x2
    80001808:	cd4080e7          	jalr	-812(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
}
    8000180c:	01813083          	ld	ra,24(sp)
    80001810:	01013403          	ld	s0,16(sp)
    80001814:	00813483          	ld	s1,8(sp)
    80001818:	02010113          	addi	sp,sp,32
    8000181c:	00008067          	ret

0000000080001820 <_Z16free_slab_objectP6slab_sPKv>:

void free_slab_object(slab_t* slab, const void* objp)
{
    80001820:	00058693          	mv	a3,a1
    int indexOfObject = ((size_t)objp - sizeof(slab_t) - (size_t)slab) / slab->owner->obj_size;
    80001824:	40a58733          	sub	a4,a1,a0
    80001828:	fb070713          	addi	a4,a4,-80
    8000182c:	01053783          	ld	a5,16(a0)
    80001830:	2307b783          	ld	a5,560(a5)
    80001834:	02f75733          	divu	a4,a4,a5
    80001838:	0007059b          	sext.w	a1,a4
    if((size_t)objp != (size_t)slab + sizeof(slab_t) + indexOfObject*slab->owner->obj_size) //address not allocated, random address
    8000183c:	02b787b3          	mul	a5,a5,a1
    80001840:	00f507b3          	add	a5,a0,a5
    80001844:	05078793          	addi	a5,a5,80
    80001848:	00f68463          	beq	a3,a5,80001850 <_Z16free_slab_objectP6slab_sPKv+0x30>
    8000184c:	00008067          	ret
{
    80001850:	fe010113          	addi	sp,sp,-32
    80001854:	00113c23          	sd	ra,24(sp)
    80001858:	00813823          	sd	s0,16(sp)
    8000185c:	00913423          	sd	s1,8(sp)
    80001860:	02010413          	addi	s0,sp,32
    80001864:	00050493          	mv	s1,a0
        return;

    resetAllocatedIndex(slab, indexOfObject);
    80001868:	00000097          	auipc	ra,0x0
    8000186c:	ddc080e7          	jalr	-548(ra) # 80001644 <_Z19resetAllocatedIndexP6slab_si>
    if(slab->numOfObjects == slab->numOfAllocatedObjects)
    80001870:	0184b703          	ld	a4,24(s1)
    80001874:	0204b783          	ld	a5,32(s1)
    80001878:	02f70663          	beq	a4,a5,800018a4 <_Z16free_slab_objectP6slab_sPKv+0x84>
        removeFullSlab(slab->owner, slab);
    else if(slab->numOfAllocatedObjects == 1)
    8000187c:	00100713          	li	a4,1
    80001880:	02e78c63          	beq	a5,a4,800018b8 <_Z16free_slab_objectP6slab_sPKv+0x98>
        removePartialSlab(slab->owner, slab);
    slab->numOfAllocatedObjects--;
    80001884:	0204b783          	ld	a5,32(s1)
    80001888:	fff78793          	addi	a5,a5,-1
    8000188c:	02f4b023          	sd	a5,32(s1)
}
    80001890:	01813083          	ld	ra,24(sp)
    80001894:	01013403          	ld	s0,16(sp)
    80001898:	00813483          	ld	s1,8(sp)
    8000189c:	02010113          	addi	sp,sp,32
    800018a0:	00008067          	ret
        removeFullSlab(slab->owner, slab);
    800018a4:	00048593          	mv	a1,s1
    800018a8:	0104b503          	ld	a0,16(s1)
    800018ac:	00000097          	auipc	ra,0x0
    800018b0:	de4080e7          	jalr	-540(ra) # 80001690 <_Z14removeFullSlabP12kmem_cache_sP6slab_s>
    800018b4:	fd1ff06f          	j	80001884 <_Z16free_slab_objectP6slab_sPKv+0x64>
        removePartialSlab(slab->owner, slab);
    800018b8:	00048593          	mv	a1,s1
    800018bc:	0104b503          	ld	a0,16(s1)
    800018c0:	00000097          	auipc	ra,0x0
    800018c4:	e34080e7          	jalr	-460(ra) # 800016f4 <_Z17removePartialSlabP12kmem_cache_sP6slab_s>
    800018c8:	fbdff06f          	j	80001884 <_Z16free_slab_objectP6slab_sPKv+0x64>

00000000800018cc <_Z9kmem_initPvi>:


//slab allocator public interface-----------------------------------------------------------------------------
void kmem_init(void *space, int block_num)
{
    800018cc:	ff010113          	addi	sp,sp,-16
    800018d0:	00113423          	sd	ra,8(sp)
    800018d4:	00813023          	sd	s0,0(sp)
    800018d8:	01010413          	addi	s0,sp,16
    buddyAllocator* buddy = buddy_init(space, block_num);
    800018dc:	00001097          	auipc	ra,0x1
    800018e0:	388080e7          	jalr	904(ra) # 80002c64 <_Z10buddy_initPvm>
    slabAllocator = slab_allocator_init(buddy);
    800018e4:	00000097          	auipc	ra,0x0
    800018e8:	9a0080e7          	jalr	-1632(ra) # 80001284 <_Z19slab_allocator_initP14buddyAllocator>
    800018ec:	00009797          	auipc	a5,0x9
    800018f0:	eaa7ba23          	sd	a0,-332(a5) # 8000a7a0 <_ZL13slabAllocator>
}
    800018f4:	00813083          	ld	ra,8(sp)
    800018f8:	00013403          	ld	s0,0(sp)
    800018fc:	01010113          	addi	sp,sp,16
    80001900:	00008067          	ret

0000000080001904 <_Z16kmem_cache_allocP12kmem_cache_s>:
    newCache->slab_size = getOptimalSlabSize(size);
    return nullptr;
}

void *kmem_cache_alloc(kmem_cache_t *cachep)
{
    80001904:	fe010113          	addi	sp,sp,-32
    80001908:	00113c23          	sd	ra,24(sp)
    8000190c:	00813823          	sd	s0,16(sp)
    80001910:	00913423          	sd	s1,8(sp)
    80001914:	01213023          	sd	s2,0(sp)
    80001918:	02010413          	addi	s0,sp,32
    8000191c:	00050493          	mv	s1,a0
    if(cachep->slabs_partial != nullptr)
    80001920:	22053503          	ld	a0,544(a0)
    80001924:	02051c63          	bnez	a0,8000195c <_Z16kmem_cache_allocP12kmem_cache_s+0x58>
        void* allocatedAddr = allocateObject(cachep->slabs_partial);
        if(full(cachep->slabs_partial))
            putPartialToFull(cachep);
        return allocatedAddr;
    }
    else if(cachep->slabs_empty != nullptr)
    80001928:	2104b503          	ld	a0,528(s1)
    8000192c:	06050c63          	beqz	a0,800019a4 <_Z16kmem_cache_allocP12kmem_cache_s+0xa0>
    {
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    80001930:	00000097          	auipc	ra,0x0
    80001934:	9fc080e7          	jalr	-1540(ra) # 8000132c <_Z14allocateObjectP6slab_s>
    80001938:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    8000193c:	2104b503          	ld	a0,528(s1)
    80001940:	00000097          	auipc	ra,0x0
    80001944:	acc080e7          	jalr	-1332(ra) # 8000140c <_Z5emptyP6slab_s>
    80001948:	02051863          	bnez	a0,80001978 <_Z16kmem_cache_allocP12kmem_cache_s+0x74>
            putEmptyToPartial(cachep);
    8000194c:	00048513          	mv	a0,s1
    80001950:	00000097          	auipc	ra,0x0
    80001954:	b24080e7          	jalr	-1244(ra) # 80001474 <_Z17putEmptyToPartialP12kmem_cache_s>
        return allocatedAddr;
    80001958:	0200006f          	j	80001978 <_Z16kmem_cache_allocP12kmem_cache_s+0x74>
        void* allocatedAddr = allocateObject(cachep->slabs_partial);
    8000195c:	00000097          	auipc	ra,0x0
    80001960:	9d0080e7          	jalr	-1584(ra) # 8000132c <_Z14allocateObjectP6slab_s>
    80001964:	00050913          	mv	s2,a0
        if(full(cachep->slabs_partial))
    80001968:	2204b503          	ld	a0,544(s1)
    8000196c:	00000097          	auipc	ra,0x0
    80001970:	a78080e7          	jalr	-1416(ra) # 800013e4 <_Z4fullP6slab_s>
    80001974:	02051063          	bnez	a0,80001994 <_Z16kmem_cache_allocP12kmem_cache_s+0x90>
        if(!empty(cachep->slabs_empty))
            putEmptyToPartial(cachep);
        return allocatedAddr;
    }
    return nullptr;
}
    80001978:	00090513          	mv	a0,s2
    8000197c:	01813083          	ld	ra,24(sp)
    80001980:	01013403          	ld	s0,16(sp)
    80001984:	00813483          	ld	s1,8(sp)
    80001988:	00013903          	ld	s2,0(sp)
    8000198c:	02010113          	addi	sp,sp,32
    80001990:	00008067          	ret
            putPartialToFull(cachep);
    80001994:	00048513          	mv	a0,s1
    80001998:	00000097          	auipc	ra,0x0
    8000199c:	a94080e7          	jalr	-1388(ra) # 8000142c <_Z16putPartialToFullP12kmem_cache_s>
        return allocatedAddr;
    800019a0:	fd9ff06f          	j	80001978 <_Z16kmem_cache_allocP12kmem_cache_s+0x74>
        allocateSlab(cachep);
    800019a4:	00048513          	mv	a0,s1
    800019a8:	00000097          	auipc	ra,0x0
    800019ac:	b14080e7          	jalr	-1260(ra) # 800014bc <_Z12allocateSlabP12kmem_cache_s>
        if(cachep->slabs_empty == nullptr)
    800019b0:	2104b903          	ld	s2,528(s1)
    800019b4:	fc0902e3          	beqz	s2,80001978 <_Z16kmem_cache_allocP12kmem_cache_s+0x74>
        void* allocatedAddr = allocateObject(cachep->slabs_empty);
    800019b8:	00090513          	mv	a0,s2
    800019bc:	00000097          	auipc	ra,0x0
    800019c0:	970080e7          	jalr	-1680(ra) # 8000132c <_Z14allocateObjectP6slab_s>
    800019c4:	00050913          	mv	s2,a0
        if(!empty(cachep->slabs_empty))
    800019c8:	2104b503          	ld	a0,528(s1)
    800019cc:	00000097          	auipc	ra,0x0
    800019d0:	a40080e7          	jalr	-1472(ra) # 8000140c <_Z5emptyP6slab_s>
    800019d4:	fa0512e3          	bnez	a0,80001978 <_Z16kmem_cache_allocP12kmem_cache_s+0x74>
            putEmptyToPartial(cachep);
    800019d8:	00048513          	mv	a0,s1
    800019dc:	00000097          	auipc	ra,0x0
    800019e0:	a98080e7          	jalr	-1384(ra) # 80001474 <_Z17putEmptyToPartialP12kmem_cache_s>
        return allocatedAddr;
    800019e4:	f95ff06f          	j	80001978 <_Z16kmem_cache_allocP12kmem_cache_s+0x74>

00000000800019e8 <_Z17kmem_cache_createPKcmPFvPvES3_>:
{
    800019e8:	fc010113          	addi	sp,sp,-64
    800019ec:	02113c23          	sd	ra,56(sp)
    800019f0:	02813823          	sd	s0,48(sp)
    800019f4:	02913423          	sd	s1,40(sp)
    800019f8:	03213023          	sd	s2,32(sp)
    800019fc:	01313c23          	sd	s3,24(sp)
    80001a00:	01413823          	sd	s4,16(sp)
    80001a04:	01513423          	sd	s5,8(sp)
    80001a08:	04010413          	addi	s0,sp,64
    80001a0c:	00050993          	mv	s3,a0
    80001a10:	00058913          	mv	s2,a1
    80001a14:	00060a13          	mv	s4,a2
    80001a18:	00068a93          	mv	s5,a3
    kmem_cache_t* newCache = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    80001a1c:	00009517          	auipc	a0,0x9
    80001a20:	d8453503          	ld	a0,-636(a0) # 8000a7a0 <_ZL13slabAllocator>
    80001a24:	07850513          	addi	a0,a0,120
    80001a28:	00000097          	auipc	ra,0x0
    80001a2c:	edc080e7          	jalr	-292(ra) # 80001904 <_Z16kmem_cache_allocP12kmem_cache_s>
    80001a30:	00050493          	mv	s1,a0
    newCache->slabs_empty = nullptr;
    80001a34:	20053823          	sd	zero,528(a0)
    newCache->slabs_partial = nullptr;
    80001a38:	22053023          	sd	zero,544(a0)
    newCache->slabs_full = nullptr;
    80001a3c:	20053c23          	sd	zero,536(a0)
    newCache->next = newCache->prev = nullptr;
    80001a40:	20053423          	sd	zero,520(a0)
    80001a44:	20053023          	sd	zero,512(a0)
    newCache->dtor = dtor;
    80001a48:	25553023          	sd	s5,576(a0)
    newCache->ctor = ctor;
    80001a4c:	23453c23          	sd	s4,568(a0)
    strcpy(name, newCache->cacheName);
    80001a50:	00050593          	mv	a1,a0
    80001a54:	00098513          	mv	a0,s3
    80001a58:	00000097          	auipc	ra,0x0
    80001a5c:	800080e7          	jalr	-2048(ra) # 80001258 <_Z6strcpyPKcPc>
    newCache->obj_size = size;
    80001a60:	2324b823          	sd	s2,560(s1)
    newCache->slab_size = getOptimalSlabSize(size);
    80001a64:	00090513          	mv	a0,s2
    80001a68:	00000097          	auipc	ra,0x0
    80001a6c:	af4080e7          	jalr	-1292(ra) # 8000155c <_Z18getOptimalSlabSizem>
    80001a70:	22a4b423          	sd	a0,552(s1)
}
    80001a74:	00000513          	li	a0,0
    80001a78:	03813083          	ld	ra,56(sp)
    80001a7c:	03013403          	ld	s0,48(sp)
    80001a80:	02813483          	ld	s1,40(sp)
    80001a84:	02013903          	ld	s2,32(sp)
    80001a88:	01813983          	ld	s3,24(sp)
    80001a8c:	01013a03          	ld	s4,16(sp)
    80001a90:	00813a83          	ld	s5,8(sp)
    80001a94:	04010113          	addi	sp,sp,64
    80001a98:	00008067          	ret

0000000080001a9c <_Z15kmem_cache_freeP12kmem_cache_sPv>:

void kmem_cache_free(kmem_cache_t *cachep, void *objp)
{
    80001a9c:	fe010113          	addi	sp,sp,-32
    80001aa0:	00113c23          	sd	ra,24(sp)
    80001aa4:	00813823          	sd	s0,16(sp)
    80001aa8:	00913423          	sd	s1,8(sp)
    80001aac:	02010413          	addi	s0,sp,32
    80001ab0:	00058493          	mv	s1,a1
    slab_t* slab = findSlab(cachep, objp);
    80001ab4:	00000097          	auipc	ra,0x0
    80001ab8:	b10080e7          	jalr	-1264(ra) # 800015c4 <_Z8findSlabP12kmem_cache_sPKv>
    if(slab == nullptr) return;
    80001abc:	00050863          	beqz	a0,80001acc <_Z15kmem_cache_freeP12kmem_cache_sPv+0x30>
    free_slab_object(slab, objp);
    80001ac0:	00048593          	mv	a1,s1
    80001ac4:	00000097          	auipc	ra,0x0
    80001ac8:	d5c080e7          	jalr	-676(ra) # 80001820 <_Z16free_slab_objectP6slab_sPKv>
}
    80001acc:	01813083          	ld	ra,24(sp)
    80001ad0:	01013403          	ld	s0,16(sp)
    80001ad4:	00813483          	ld	s1,8(sp)
    80001ad8:	02010113          	addi	sp,sp,32
    80001adc:	00008067          	ret

0000000080001ae0 <_Z15kmem_cache_infoP12kmem_cache_s>:

//TODO
//what needs to be printed
void kmem_cache_info(kmem_cache_t *cachep)
{
    80001ae0:	fe010113          	addi	sp,sp,-32
    80001ae4:	00113c23          	sd	ra,24(sp)
    80001ae8:	00813823          	sd	s0,16(sp)
    80001aec:	00913423          	sd	s1,8(sp)
    80001af0:	01213023          	sd	s2,0(sp)
    80001af4:	02010413          	addi	s0,sp,32
    80001af8:	00050913          	mv	s2,a0
    KConsole::trapPrintString("Kmem Cache Info-------------------\n");
    80001afc:	00006517          	auipc	a0,0x6
    80001b00:	57c50513          	addi	a0,a0,1404 # 80008078 <CONSOLE_STATUS+0x68>
    80001b04:	00002097          	auipc	ra,0x2
    80001b08:	9d4080e7          	jalr	-1580(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Cache Name ");
    80001b0c:	00006517          	auipc	a0,0x6
    80001b10:	59450513          	addi	a0,a0,1428 # 800080a0 <CONSOLE_STATUS+0x90>
    80001b14:	00002097          	auipc	ra,0x2
    80001b18:	9c4080e7          	jalr	-1596(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString(cachep->cacheName); KConsole::trapPrintString("\n");
    80001b1c:	00090513          	mv	a0,s2
    80001b20:	00002097          	auipc	ra,0x2
    80001b24:	9b8080e7          	jalr	-1608(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
    80001b28:	00007517          	auipc	a0,0x7
    80001b2c:	ad850513          	addi	a0,a0,-1320 # 80008600 <CONSOLE_STATUS+0x5f0>
    80001b30:	00002097          	auipc	ra,0x2
    80001b34:	9a8080e7          	jalr	-1624(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Cache slab size in blocks ");
    80001b38:	00006517          	auipc	a0,0x6
    80001b3c:	57850513          	addi	a0,a0,1400 # 800080b0 <CONSOLE_STATUS+0xa0>
    80001b40:	00002097          	auipc	ra,0x2
    80001b44:	998080e7          	jalr	-1640(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(cachep->slab_size); KConsole::trapPrintString("\n");
    80001b48:	00000613          	li	a2,0
    80001b4c:	00a00593          	li	a1,10
    80001b50:	22893503          	ld	a0,552(s2)
    80001b54:	00002097          	auipc	ra,0x2
    80001b58:	9c8080e7          	jalr	-1592(ra) # 8000351c <_ZN8KConsole12trapPrintIntEmii>
    80001b5c:	00007517          	auipc	a0,0x7
    80001b60:	aa450513          	addi	a0,a0,-1372 # 80008600 <CONSOLE_STATUS+0x5f0>
    80001b64:	00002097          	auipc	ra,0x2
    80001b68:	974080e7          	jalr	-1676(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Cache obj size in bytes ");
    80001b6c:	00006517          	auipc	a0,0x6
    80001b70:	56450513          	addi	a0,a0,1380 # 800080d0 <CONSOLE_STATUS+0xc0>
    80001b74:	00002097          	auipc	ra,0x2
    80001b78:	964080e7          	jalr	-1692(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(cachep->obj_size); KConsole::trapPrintString("\n");
    80001b7c:	00000613          	li	a2,0
    80001b80:	00a00593          	li	a1,10
    80001b84:	23093503          	ld	a0,560(s2)
    80001b88:	00002097          	auipc	ra,0x2
    80001b8c:	994080e7          	jalr	-1644(ra) # 8000351c <_ZN8KConsole12trapPrintIntEmii>
    80001b90:	00007517          	auipc	a0,0x7
    80001b94:	a7050513          	addi	a0,a0,-1424 # 80008600 <CONSOLE_STATUS+0x5f0>
    80001b98:	00002097          	auipc	ra,0x2
    80001b9c:	940080e7          	jalr	-1728(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Slabs info----\n");
    80001ba0:	00006517          	auipc	a0,0x6
    80001ba4:	55050513          	addi	a0,a0,1360 # 800080f0 <CONSOLE_STATUS+0xe0>
    80001ba8:	00002097          	auipc	ra,0x2
    80001bac:	930080e7          	jalr	-1744(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>

    KConsole::trapPrintString("Full slabs\n");
    80001bb0:	00006517          	auipc	a0,0x6
    80001bb4:	55050513          	addi	a0,a0,1360 # 80008100 <CONSOLE_STATUS+0xf0>
    80001bb8:	00002097          	auipc	ra,0x2
    80001bbc:	920080e7          	jalr	-1760(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
    slab_t* slab = cachep->slabs_full;
    80001bc0:	21893483          	ld	s1,536(s2)
    while(slab != nullptr)
    80001bc4:	00048c63          	beqz	s1,80001bdc <_Z15kmem_cache_infoP12kmem_cache_s+0xfc>
    {
        printSlabInfo(slab);
    80001bc8:	00048513          	mv	a0,s1
    80001bcc:	00000097          	auipc	ra,0x0
    80001bd0:	b8c080e7          	jalr	-1140(ra) # 80001758 <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001bd4:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001bd8:	fedff06f          	j	80001bc4 <_Z15kmem_cache_infoP12kmem_cache_s+0xe4>
    }

    KConsole::trapPrintString("Partial slabs\n");
    80001bdc:	00006517          	auipc	a0,0x6
    80001be0:	53450513          	addi	a0,a0,1332 # 80008110 <CONSOLE_STATUS+0x100>
    80001be4:	00002097          	auipc	ra,0x2
    80001be8:	8f4080e7          	jalr	-1804(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
    slab = cachep->slabs_partial;
    80001bec:	22093483          	ld	s1,544(s2)
    while(slab != nullptr)
    80001bf0:	00048c63          	beqz	s1,80001c08 <_Z15kmem_cache_infoP12kmem_cache_s+0x128>
    {
        printSlabInfo(slab);
    80001bf4:	00048513          	mv	a0,s1
    80001bf8:	00000097          	auipc	ra,0x0
    80001bfc:	b60080e7          	jalr	-1184(ra) # 80001758 <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001c00:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001c04:	fedff06f          	j	80001bf0 <_Z15kmem_cache_infoP12kmem_cache_s+0x110>
    }

    KConsole::trapPrintString("Empty slabs\n");
    80001c08:	00006517          	auipc	a0,0x6
    80001c0c:	51850513          	addi	a0,a0,1304 # 80008120 <CONSOLE_STATUS+0x110>
    80001c10:	00002097          	auipc	ra,0x2
    80001c14:	8c8080e7          	jalr	-1848(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
    slab = cachep->slabs_empty;
    80001c18:	21093483          	ld	s1,528(s2)
    while(slab != nullptr)
    80001c1c:	00048c63          	beqz	s1,80001c34 <_Z15kmem_cache_infoP12kmem_cache_s+0x154>
    {
        printSlabInfo(slab);
    80001c20:	00048513          	mv	a0,s1
    80001c24:	00000097          	auipc	ra,0x0
    80001c28:	b34080e7          	jalr	-1228(ra) # 80001758 <_Z13printSlabInfoP6slab_s>
        slab = slab->next;
    80001c2c:	0084b483          	ld	s1,8(s1)
    while(slab != nullptr)
    80001c30:	fedff06f          	j	80001c1c <_Z15kmem_cache_infoP12kmem_cache_s+0x13c>
    }
}
    80001c34:	01813083          	ld	ra,24(sp)
    80001c38:	01013403          	ld	s0,16(sp)
    80001c3c:	00813483          	ld	s1,8(sp)
    80001c40:	00013903          	ld	s2,0(sp)
    80001c44:	02010113          	addi	sp,sp,32
    80001c48:	00008067          	ret

0000000080001c4c <_Z7kmallocm>:

void *kmalloc(size_t size)
{
    80001c4c:	fe010113          	addi	sp,sp,-32
    80001c50:	00113c23          	sd	ra,24(sp)
    80001c54:	00813823          	sd	s0,16(sp)
    80001c58:	00913423          	sd	s1,8(sp)
    80001c5c:	01213023          	sd	s2,0(sp)
    80001c60:	02010413          	addi	s0,sp,32
    size_t level = getDeg2Ceil(size);
    80001c64:	00001097          	auipc	ra,0x1
    80001c68:	b9c080e7          	jalr	-1124(ra) # 80002800 <_Z11getDeg2Ceilm>
    size_t index = level - CACHE_BUFFER_SMALL;
    80001c6c:	ffb50493          	addi	s1,a0,-5
    if(slabAllocator->cachesBuffers[index] == nullptr)
    80001c70:	00009917          	auipc	s2,0x9
    80001c74:	b3093903          	ld	s2,-1232(s2) # 8000a7a0 <_ZL13slabAllocator>
    80001c78:	ffd50513          	addi	a0,a0,-3
    80001c7c:	00351513          	slli	a0,a0,0x3
    80001c80:	00a90533          	add	a0,s2,a0
    80001c84:	00053783          	ld	a5,0(a0)
    80001c88:	02078e63          	beqz	a5,80001cc4 <_Z7kmallocm+0x78>
        slabAllocator->cachesBuffers[index] = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);

    return kmem_cache_alloc(slabAllocator->cachesBuffers[index]);
    80001c8c:	00248493          	addi	s1,s1,2
    80001c90:	00349493          	slli	s1,s1,0x3
    80001c94:	00009797          	auipc	a5,0x9
    80001c98:	b0c7b783          	ld	a5,-1268(a5) # 8000a7a0 <_ZL13slabAllocator>
    80001c9c:	009784b3          	add	s1,a5,s1
    80001ca0:	0004b503          	ld	a0,0(s1)
    80001ca4:	00000097          	auipc	ra,0x0
    80001ca8:	c60080e7          	jalr	-928(ra) # 80001904 <_Z16kmem_cache_allocP12kmem_cache_s>
}
    80001cac:	01813083          	ld	ra,24(sp)
    80001cb0:	01013403          	ld	s0,16(sp)
    80001cb4:	00813483          	ld	s1,8(sp)
    80001cb8:	00013903          	ld	s2,0(sp)
    80001cbc:	02010113          	addi	sp,sp,32
    80001cc0:	00008067          	ret
        slabAllocator->cachesBuffers[index] = (kmem_cache_t*)kmem_cache_alloc(&slabAllocator->cacheOfCaches);
    80001cc4:	07890513          	addi	a0,s2,120
    80001cc8:	00000097          	auipc	ra,0x0
    80001ccc:	c3c080e7          	jalr	-964(ra) # 80001904 <_Z16kmem_cache_allocP12kmem_cache_s>
    80001cd0:	00248793          	addi	a5,s1,2
    80001cd4:	00379793          	slli	a5,a5,0x3
    80001cd8:	00f90933          	add	s2,s2,a5
    80001cdc:	00a93023          	sd	a0,0(s2)
    80001ce0:	fadff06f          	j	80001c8c <_Z7kmallocm+0x40>

0000000080001ce4 <_Z5kfreePKv>:

void kfree(const void *objp)
{
    80001ce4:	fe010113          	addi	sp,sp,-32
    80001ce8:	00113c23          	sd	ra,24(sp)
    80001cec:	00813823          	sd	s0,16(sp)
    80001cf0:	00913423          	sd	s1,8(sp)
    80001cf4:	01213023          	sd	s2,0(sp)
    80001cf8:	02010413          	addi	s0,sp,32
    80001cfc:	00050913          	mv	s2,a0
    slab_t* slab = nullptr;
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80001d00:	00000493          	li	s1,0
    slab_t* slab = nullptr;
    80001d04:	00000513          	li	a0,0
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80001d08:	00c00793          	li	a5,12
    80001d0c:	0297ea63          	bltu	a5,s1,80001d40 <_Z5kfreePKv+0x5c>
    {
        slab = findSlab(slabAllocator->cachesBuffers[i], objp);
    80001d10:	00248793          	addi	a5,s1,2
    80001d14:	00379713          	slli	a4,a5,0x3
    80001d18:	00009797          	auipc	a5,0x9
    80001d1c:	a887b783          	ld	a5,-1400(a5) # 8000a7a0 <_ZL13slabAllocator>
    80001d20:	00e787b3          	add	a5,a5,a4
    80001d24:	00090593          	mv	a1,s2
    80001d28:	0007b503          	ld	a0,0(a5)
    80001d2c:	00000097          	auipc	ra,0x0
    80001d30:	898080e7          	jalr	-1896(ra) # 800015c4 <_Z8findSlabP12kmem_cache_sPKv>
        if(slab != nullptr) break;
    80001d34:	00051663          	bnez	a0,80001d40 <_Z5kfreePKv+0x5c>
    for(size_t i = 0;i < CACHE_BUFFER_SIZE;i++)
    80001d38:	00148493          	addi	s1,s1,1
    80001d3c:	fcdff06f          	j	80001d08 <_Z5kfreePKv+0x24>
    }
    if(slab != nullptr)
    80001d40:	00050863          	beqz	a0,80001d50 <_Z5kfreePKv+0x6c>
    {
        free_slab_object(slab, objp);
    80001d44:	00090593          	mv	a1,s2
    80001d48:	00000097          	auipc	ra,0x0
    80001d4c:	ad8080e7          	jalr	-1320(ra) # 80001820 <_Z16free_slab_objectP6slab_sPKv>
    }
}
    80001d50:	01813083          	ld	ra,24(sp)
    80001d54:	01013403          	ld	s0,16(sp)
    80001d58:	00813483          	ld	s1,8(sp)
    80001d5c:	00013903          	ld	s2,0(sp)
    80001d60:	02010113          	addi	sp,sp,32
    80001d64:	00008067          	ret

0000000080001d68 <_Z17destroy_slab_listP6slab_s>:

void destroy_slab_list(slab_t* slab)
{
    80001d68:	fe010113          	addi	sp,sp,-32
    80001d6c:	00113c23          	sd	ra,24(sp)
    80001d70:	00813823          	sd	s0,16(sp)
    80001d74:	00913423          	sd	s1,8(sp)
    80001d78:	01213023          	sd	s2,0(sp)
    80001d7c:	02010413          	addi	s0,sp,32
    80001d80:	00050593          	mv	a1,a0
    size_t sz = sizeof(slab_t) + slab->numOfObjects*slab->owner->obj_size;
    80001d84:	01853903          	ld	s2,24(a0)
    80001d88:	01053783          	ld	a5,16(a0)
    80001d8c:	2307b783          	ld	a5,560(a5)
    80001d90:	02f90933          	mul	s2,s2,a5
    80001d94:	05090913          	addi	s2,s2,80
    while(slab != nullptr)
    80001d98:	02058463          	beqz	a1,80001dc0 <_Z17destroy_slab_listP6slab_s+0x58>
    {
        slab_t* nextSlab = slab->next;
    80001d9c:	0085b483          	ld	s1,8(a1)
        buddy_free(slabAllocator->buddy, slab, sz);
    80001da0:	00090613          	mv	a2,s2
    80001da4:	00009797          	auipc	a5,0x9
    80001da8:	9fc7b783          	ld	a5,-1540(a5) # 8000a7a0 <_ZL13slabAllocator>
    80001dac:	0007b503          	ld	a0,0(a5)
    80001db0:	00001097          	auipc	ra,0x1
    80001db4:	034080e7          	jalr	52(ra) # 80002de4 <_Z10buddy_freeP14buddyAllocatorPvm>
        slab = nextSlab;
    80001db8:	00048593          	mv	a1,s1
    while(slab != nullptr)
    80001dbc:	fddff06f          	j	80001d98 <_Z17destroy_slab_listP6slab_s+0x30>
    }
}
    80001dc0:	01813083          	ld	ra,24(sp)
    80001dc4:	01013403          	ld	s0,16(sp)
    80001dc8:	00813483          	ld	s1,8(sp)
    80001dcc:	00013903          	ld	s2,0(sp)
    80001dd0:	02010113          	addi	sp,sp,32
    80001dd4:	00008067          	ret

0000000080001dd8 <_Z18kmem_cache_destroyP12kmem_cache_s>:

void kmem_cache_destroy(kmem_cache_t *cachep)
{
    80001dd8:	fe010113          	addi	sp,sp,-32
    80001ddc:	00113c23          	sd	ra,24(sp)
    80001de0:	00813823          	sd	s0,16(sp)
    80001de4:	00913423          	sd	s1,8(sp)
    80001de8:	02010413          	addi	s0,sp,32
    80001dec:	00050493          	mv	s1,a0
    destroy_slab_list(cachep->slabs_empty);
    80001df0:	21053503          	ld	a0,528(a0)
    80001df4:	00000097          	auipc	ra,0x0
    80001df8:	f74080e7          	jalr	-140(ra) # 80001d68 <_Z17destroy_slab_listP6slab_s>
    destroy_slab_list(cachep->slabs_partial);
    80001dfc:	2204b503          	ld	a0,544(s1)
    80001e00:	00000097          	auipc	ra,0x0
    80001e04:	f68080e7          	jalr	-152(ra) # 80001d68 <_Z17destroy_slab_listP6slab_s>
    destroy_slab_list(cachep->slabs_full);
    80001e08:	2184b503          	ld	a0,536(s1)
    80001e0c:	00000097          	auipc	ra,0x0
    80001e10:	f5c080e7          	jalr	-164(ra) # 80001d68 <_Z17destroy_slab_listP6slab_s>
    kmem_cache_free(&slabAllocator->cacheOfCaches,cachep);
    80001e14:	00048593          	mv	a1,s1
    80001e18:	00009517          	auipc	a0,0x9
    80001e1c:	98853503          	ld	a0,-1656(a0) # 8000a7a0 <_ZL13slabAllocator>
    80001e20:	07850513          	addi	a0,a0,120
    80001e24:	00000097          	auipc	ra,0x0
    80001e28:	c78080e7          	jalr	-904(ra) # 80001a9c <_Z15kmem_cache_freeP12kmem_cache_sPv>
    80001e2c:	01813083          	ld	ra,24(sp)
    80001e30:	01013403          	ld	s0,16(sp)
    80001e34:	00813483          	ld	s1,8(sp)
    80001e38:	02010113          	addi	sp,sp,32
    80001e3c:	00008067          	ret

0000000080001e40 <_Z9mem_allocm>:
//

#include "../h/syscall_c.hpp"

void* mem_alloc(size_t size)
{
    80001e40:	ff010113          	addi	sp,sp,-16
    80001e44:	00813423          	sd	s0,8(sp)
    80001e48:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 numBlocks = (size + MEM_BLOCK_SIZE - 1) / MEM_BLOCK_SIZE;
    80001e4c:	03f50513          	addi	a0,a0,63
    80001e50:	00655513          	srli	a0,a0,0x6
    __asm__ volatile("mv a1, %0" :  : "r"(numBlocks));
    80001e54:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 1");
    80001e58:	00100513          	li	a0,1

    __asm__ volatile("ecall"); // system call
    80001e5c:	00000073          	ecall

    //get the address
    uint64 allocatedAddr = 0x01;
    __asm__ volatile("mv %0, a0" : "=r"(allocatedAddr));
    80001e60:	00050513          	mv	a0,a0

    return (void*)allocatedAddr;
}
    80001e64:	00813403          	ld	s0,8(sp)
    80001e68:	01010113          	addi	sp,sp,16
    80001e6c:	00008067          	ret

0000000080001e70 <_Z8mem_freePv>:

int mem_free(void* p)
{
    80001e70:	ff010113          	addi	sp,sp,-16
    80001e74:	00813423          	sd	s0,8(sp)
    80001e78:	01010413          	addi	s0,sp,16
    //prepare for system call
    uint64 addrFree = (uint64)p;
    __asm__ volatile("mv a1, %0" :  : "r"(addrFree));
    80001e7c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 2");
    80001e80:	00200513          	li	a0,2

    __asm__ volatile("ecall"); // system call
    80001e84:	00000073          	ecall

    //get the result of system call
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001e88:	00050513          	mv	a0,a0

    return result;
}
    80001e8c:	0005051b          	sext.w	a0,a0
    80001e90:	00813403          	ld	s0,8(sp)
    80001e94:	01010113          	addi	sp,sp,16
    80001e98:	00008067          	ret

0000000080001e9c <_Z13thread_createPP7_threadPFvPvES2_>:

int thread_create(thread_t* handle, void (*start_routine)(void*), void* args)
{
    80001e9c:	fd010113          	addi	sp,sp,-48
    80001ea0:	02113423          	sd	ra,40(sp)
    80001ea4:	02813023          	sd	s0,32(sp)
    80001ea8:	00913c23          	sd	s1,24(sp)
    80001eac:	01213823          	sd	s2,16(sp)
    80001eb0:	01313423          	sd	s3,8(sp)
    80001eb4:	03010413          	addi	s0,sp,48
    80001eb8:	00050493          	mv	s1,a0
    80001ebc:	00058913          	mv	s2,a1
    80001ec0:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)args;
    uint64 opLocal = 0x11;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    80001ec4:	00001537          	lui	a0,0x1
    80001ec8:	00000097          	auipc	ra,0x0
    80001ecc:	f78080e7          	jalr	-136(ra) # 80001e40 <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    //todo
    //handle this error
    if(stack_space == 0)
    80001ed0:	04050263          	beqz	a0,80001f14 <_Z13thread_createPP7_threadPFvPvES2_+0x78>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    80001ed4:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    80001ed8:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    80001edc:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    80001ee0:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    80001ee4:	01100793          	li	a5,17
    80001ee8:	00078513          	mv	a0,a5


    __asm__ volatile("ecall");
    80001eec:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001ef0:	00050513          	mv	a0,a0

    return result;
    80001ef4:	0005051b          	sext.w	a0,a0
}
    80001ef8:	02813083          	ld	ra,40(sp)
    80001efc:	02013403          	ld	s0,32(sp)
    80001f00:	01813483          	ld	s1,24(sp)
    80001f04:	01013903          	ld	s2,16(sp)
    80001f08:	00813983          	ld	s3,8(sp)
    80001f0c:	03010113          	addi	sp,sp,48
    80001f10:	00008067          	ret
        return -1;
    80001f14:	fff00513          	li	a0,-1
    80001f18:	fe1ff06f          	j	80001ef8 <_Z13thread_createPP7_threadPFvPvES2_+0x5c>

0000000080001f1c <_Z15thread_dispatchv>:

void thread_dispatch()
{
    80001f1c:	ff010113          	addi	sp,sp,-16
    80001f20:	00813423          	sd	s0,8(sp)
    80001f24:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x13");
    80001f28:	01300513          	li	a0,19
    __asm__ volatile("ecall");
    80001f2c:	00000073          	ecall
}
    80001f30:	00813403          	ld	s0,8(sp)
    80001f34:	01010113          	addi	sp,sp,16
    80001f38:	00008067          	ret

0000000080001f3c <_Z11thread_exitv>:

int thread_exit()
{
    80001f3c:	ff010113          	addi	sp,sp,-16
    80001f40:	00813423          	sd	s0,8(sp)
    80001f44:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x12");
    80001f48:	01200513          	li	a0,18

    __asm__ volatile("ecall");
    80001f4c:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001f50:	00050513          	mv	a0,a0
    return result;
}
    80001f54:	0005051b          	sext.w	a0,a0
    80001f58:	00813403          	ld	s0,8(sp)
    80001f5c:	01010113          	addi	sp,sp,16
    80001f60:	00008067          	ret

0000000080001f64 <_Z8sem_openPP4_semj>:

int sem_open(sem_t* handle, unsigned int x)
{
    80001f64:	ff010113          	addi	sp,sp,-16
    80001f68:	00813423          	sd	s0,8(sp)
    80001f6c:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)x));
    80001f70:	02059593          	slli	a1,a1,0x20
    80001f74:	0205d593          	srli	a1,a1,0x20
    80001f78:	00058613          	mv	a2,a1
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80001f7c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x21");
    80001f80:	02100513          	li	a0,33

    __asm__ volatile("ecall");
    80001f84:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001f88:	00050513          	mv	a0,a0
    return result;
}
    80001f8c:	0005051b          	sext.w	a0,a0
    80001f90:	00813403          	ld	s0,8(sp)
    80001f94:	01010113          	addi	sp,sp,16
    80001f98:	00008067          	ret

0000000080001f9c <_Z9sem_closeP4_sem>:


int sem_close(sem_t handle)
{
    80001f9c:	ff010113          	addi	sp,sp,-16
    80001fa0:	00813423          	sd	s0,8(sp)
    80001fa4:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80001fa8:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x22");
    80001fac:	02200513          	li	a0,34

    __asm__ volatile("ecall");
    80001fb0:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001fb4:	00050513          	mv	a0,a0
    return result;
}
    80001fb8:	0005051b          	sext.w	a0,a0
    80001fbc:	00813403          	ld	s0,8(sp)
    80001fc0:	01010113          	addi	sp,sp,16
    80001fc4:	00008067          	ret

0000000080001fc8 <_Z8sem_waitP4_sem>:

int sem_wait(sem_t id)
{
    80001fc8:	ff010113          	addi	sp,sp,-16
    80001fcc:	00813423          	sd	s0,8(sp)
    80001fd0:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    80001fd4:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x23");
    80001fd8:	02300513          	li	a0,35

    __asm__ volatile("ecall");
    80001fdc:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80001fe0:	00050513          	mv	a0,a0
    return result;
}
    80001fe4:	0005051b          	sext.w	a0,a0
    80001fe8:	00813403          	ld	s0,8(sp)
    80001fec:	01010113          	addi	sp,sp,16
    80001ff0:	00008067          	ret

0000000080001ff4 <_Z10sem_signalP4_sem>:

int sem_signal(sem_t id)
{
    80001ff4:	ff010113          	addi	sp,sp,-16
    80001ff8:	00813423          	sd	s0,8(sp)
    80001ffc:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)id));
    80002000:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x24");
    80002004:	02400513          	li	a0,36

    __asm__ volatile("ecall");
    80002008:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000200c:	00050513          	mv	a0,a0
    return result;
}
    80002010:	0005051b          	sext.w	a0,a0
    80002014:	00813403          	ld	s0,8(sp)
    80002018:	01010113          	addi	sp,sp,16
    8000201c:	00008067          	ret

0000000080002020 <_Z10time_sleepm>:

int time_sleep(uint64 time)
{
    80002020:	ff010113          	addi	sp,sp,-16
    80002024:	00813423          	sd	s0,8(sp)
    80002028:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)time));
    8000202c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x31");
    80002030:	03100513          	li	a0,49

    __asm__ volatile("ecall");
    80002034:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002038:	00050513          	mv	a0,a0
    return result;
}
    8000203c:	0005051b          	sext.w	a0,a0
    80002040:	00813403          	ld	s0,8(sp)
    80002044:	01010113          	addi	sp,sp,16
    80002048:	00008067          	ret

000000008000204c <_Z12thread_startPv>:

int thread_start(void* p)
{
    8000204c:	ff010113          	addi	sp,sp,-16
    80002050:	00813423          	sd	s0,8(sp)
    80002054:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)p));
    80002058:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x15");
    8000205c:	01500513          	li	a0,21

    __asm__ volatile("ecall");
    80002060:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002064:	00050513          	mv	a0,a0
    return result;
}
    80002068:	0005051b          	sext.w	a0,a0
    8000206c:	00813403          	ld	s0,8(sp)
    80002070:	01010113          	addi	sp,sp,16
    80002074:	00008067          	ret

0000000080002078 <_Z15thread_make_pcbPP7_threadPFvPvES2_>:

int thread_make_pcb(thread_t* handle, void(*start_routine)(void*), void *arg)
{
    80002078:	fd010113          	addi	sp,sp,-48
    8000207c:	02113423          	sd	ra,40(sp)
    80002080:	02813023          	sd	s0,32(sp)
    80002084:	00913c23          	sd	s1,24(sp)
    80002088:	01213823          	sd	s2,16(sp)
    8000208c:	01313423          	sd	s3,8(sp)
    80002090:	03010413          	addi	s0,sp,48
    80002094:	00050493          	mv	s1,a0
    80002098:	00058913          	mv	s2,a1
    8000209c:	00060993          	mv	s3,a2
    uint64 handleLocal = (uint64)handle;
    uint64 startRLocal = (uint64)start_routine;
    uint64 argsLocal = (uint64)arg;
    uint64 opLocal = 0x14;

    void * stack_space = mem_alloc(DEFAULT_STACK_SIZE);
    800020a0:	00001537          	lui	a0,0x1
    800020a4:	00000097          	auipc	ra,0x0
    800020a8:	d9c080e7          	jalr	-612(ra) # 80001e40 <_Z9mem_allocm>
    uint64 stackPointerLocal = (uint64)stack_space;
    if(stack_space == 0)
    800020ac:	04050263          	beqz	a0,800020f0 <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x78>
        return -1;

    //initialize registers
    __asm__ volatile("mv a4, %0" :  : "r"((uint64)stackPointerLocal));
    800020b0:	00050713          	mv	a4,a0
    __asm__ volatile("mv a3, %0" :  : "r"((uint64)argsLocal));
    800020b4:	00098693          	mv	a3,s3
    __asm__ volatile("mv a2, %0" :  : "r"((uint64)startRLocal));
    800020b8:	00090613          	mv	a2,s2
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handleLocal));
    800020bc:	00048593          	mv	a1,s1
    __asm__ volatile("mv a0, %0" :  : "r"((uint64)opLocal));
    800020c0:	01400793          	li	a5,20
    800020c4:	00078513          	mv	a0,a5

    __asm__ volatile("ecall");
    800020c8:	00000073          	ecall

    //get the result
    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    800020cc:	00050513          	mv	a0,a0
    return result;
    800020d0:	0005051b          	sext.w	a0,a0
}
    800020d4:	02813083          	ld	ra,40(sp)
    800020d8:	02013403          	ld	s0,32(sp)
    800020dc:	01813483          	ld	s1,24(sp)
    800020e0:	01013903          	ld	s2,16(sp)
    800020e4:	00813983          	ld	s3,8(sp)
    800020e8:	03010113          	addi	sp,sp,48
    800020ec:	00008067          	ret
        return -1;
    800020f0:	fff00513          	li	a0,-1
    800020f4:	fe1ff06f          	j	800020d4 <_Z15thread_make_pcbPP7_threadPFvPvES2_+0x5c>

00000000800020f8 <_Z4getcv>:

char getc()
{
    800020f8:	ff010113          	addi	sp,sp,-16
    800020fc:	00813423          	sd	s0,8(sp)
    80002100:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x41");
    80002104:	04100513          	li	a0,65

    __asm__ volatile("ecall");
    80002108:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    8000210c:	00050513          	mv	a0,a0
    return (char)result;
}
    80002110:	0ff57513          	andi	a0,a0,255
    80002114:	00813403          	ld	s0,8(sp)
    80002118:	01010113          	addi	sp,sp,16
    8000211c:	00008067          	ret

0000000080002120 <_Z4putcc>:

void putc(char c)
{
    80002120:	ff010113          	addi	sp,sp,-16
    80002124:	00813423          	sd	s0,8(sp)
    80002128:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)c));
    8000212c:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x42");
    80002130:	04200513          	li	a0,66
    __asm__ volatile("ecall");
    80002134:	00000073          	ecall
}
    80002138:	00813403          	ld	s0,8(sp)
    8000213c:	01010113          	addi	sp,sp,16
    80002140:	00008067          	ret

0000000080002144 <_Z20sysCallGetCharOutputv>:

char sysCallGetCharOutput()
{
    80002144:	ff010113          	addi	sp,sp,-16
    80002148:	00813423          	sd	s0,8(sp)
    8000214c:	01010413          	addi	s0,sp,16
    __asm__ volatile("li a0, 0x43");
    80002150:	04300513          	li	a0,67

    __asm__ volatile("ecall");
    80002154:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002158:	00050513          	mv	a0,a0
    return (char)result;
}
    8000215c:	0ff57513          	andi	a0,a0,255
    80002160:	00813403          	ld	s0,8(sp)
    80002164:	01010113          	addi	sp,sp,16
    80002168:	00008067          	ret

000000008000216c <_Z17thread_delete_pcbP7_thread>:

int thread_delete_pcb(thread_t handle)
{
    8000216c:	ff010113          	addi	sp,sp,-16
    80002170:	00813423          	sd	s0,8(sp)
    80002174:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv a1, %0" :  : "r"((uint64)handle));
    80002178:	00050593          	mv	a1,a0
    __asm__ volatile("li a0, 0x16");
    8000217c:	01600513          	li	a0,22
    __asm__ volatile("ecall");
    80002180:	00000073          	ecall

    uint64 result;
    __asm__ volatile("mv %0, a0" : "=r"(result));
    80002184:	00050513          	mv	a0,a0
    return (char)result;
}
    80002188:	0ff57513          	andi	a0,a0,255
    8000218c:	00813403          	ld	s0,8(sp)
    80002190:	01010113          	addi	sp,sp,16
    80002194:	00008067          	ret

0000000080002198 <_ZN7_threaddlEPv>:
//

#include "../h/_thread.hpp"
#include "../h/syscall_c.hpp"

void _thread::operator delete(void *p) {
    80002198:	ff010113          	addi	sp,sp,-16
    8000219c:	00113423          	sd	ra,8(sp)
    800021a0:	00813023          	sd	s0,0(sp)
    800021a4:	01010413          	addi	s0,sp,16
    thread_delete_pcb((thread_t)p);
    800021a8:	00000097          	auipc	ra,0x0
    800021ac:	fc4080e7          	jalr	-60(ra) # 8000216c <_Z17thread_delete_pcbP7_thread>
    800021b0:	00813083          	ld	ra,8(sp)
    800021b4:	00013403          	ld	s0,0(sp)
    800021b8:	01010113          	addi	sp,sp,16
    800021bc:	00008067          	ret

00000000800021c0 <_ZN3PCB6runnerEv>:
{
    Scheduler::put(this);
}

void PCB::runner()
{
    800021c0:	ff010113          	addi	sp,sp,-16
    800021c4:	00113423          	sd	ra,8(sp)
    800021c8:	00813023          	sd	s0,0(sp)
    800021cc:	01010413          	addi	s0,sp,16
    Riscv::popSppSpie();
    800021d0:	00002097          	auipc	ra,0x2
    800021d4:	f60080e7          	jalr	-160(ra) # 80004130 <_ZN5Riscv10popSppSpieEv>
    running->body(running->args);
    800021d8:	00008797          	auipc	a5,0x8
    800021dc:	5d07b783          	ld	a5,1488(a5) # 8000a7a8 <_ZN3PCB7runningE>
    800021e0:	0287b703          	ld	a4,40(a5)
    800021e4:	0307b503          	ld	a0,48(a5)
    800021e8:	000700e7          	jalr	a4

    thread_exit();
    800021ec:	00000097          	auipc	ra,0x0
    800021f0:	d50080e7          	jalr	-688(ra) # 80001f3c <_Z11thread_exitv>
}
    800021f4:	00813083          	ld	ra,8(sp)
    800021f8:	00013403          	ld	s0,0(sp)
    800021fc:	01010113          	addi	sp,sp,16
    80002200:	00008067          	ret

0000000080002204 <_ZN3PCBC1EPFvPvES0_S0_m>:
PCB::PCB(Body body, void *args, void* stack_space, uint64 timeSlice) :
    80002204:	ff010113          	addi	sp,sp,-16
    80002208:	00813423          	sd	s0,8(sp)
    8000220c:	01010413          	addi	s0,sp,16
    })
    80002210:	00050023          	sb	zero,0(a0) # 1000 <_entry-0x7ffff000>
    80002214:	00e53c23          	sd	a4,24(a0)
    80002218:	02053023          	sd	zero,32(a0)
    8000221c:	02b53423          	sd	a1,40(a0)
    80002220:	02c53823          	sd	a2,48(a0)
    80002224:	02d53c23          	sd	a3,56(a0)
        (uint64)((char*)stack_space + DEFAULT_STACK_SIZE),
    80002228:	000017b7          	lui	a5,0x1
    8000222c:	00f686b3          	add	a3,a3,a5
    })
    80002230:	04d53423          	sd	a3,72(a0)
    80002234:	00000797          	auipc	a5,0x0
    80002238:	f8c78793          	addi	a5,a5,-116 # 800021c0 <_ZN3PCB6runnerEv>
    8000223c:	04f53823          	sd	a5,80(a0)
    80002240:	04050c23          	sb	zero,88(a0)
    nextPCB = 0;
    80002244:	00053423          	sd	zero,8(a0)
}
    80002248:	00813403          	ld	s0,8(sp)
    8000224c:	01010113          	addi	sp,sp,16
    80002250:	00008067          	ret

0000000080002254 <_ZN3PCB5startEv>:
{
    80002254:	ff010113          	addi	sp,sp,-16
    80002258:	00113423          	sd	ra,8(sp)
    8000225c:	00813023          	sd	s0,0(sp)
    80002260:	01010413          	addi	s0,sp,16
    Scheduler::put(this);
    80002264:	00001097          	auipc	ra,0x1
    80002268:	4c8080e7          	jalr	1224(ra) # 8000372c <_ZN9Scheduler3putEP3PCB>
}
    8000226c:	00813083          	ld	ra,8(sp)
    80002270:	00013403          	ld	s0,0(sp)
    80002274:	01010113          	addi	sp,sp,16
    80002278:	00008067          	ret

000000008000227c <_ZN3PCB8dispatchEv>:

void PCB::dispatch()
{
    8000227c:	fe010113          	addi	sp,sp,-32
    80002280:	00113c23          	sd	ra,24(sp)
    80002284:	00813823          	sd	s0,16(sp)
    80002288:	00913423          	sd	s1,8(sp)
    8000228c:	01213023          	sd	s2,0(sp)
    80002290:	02010413          	addi	s0,sp,32
    PCB* old = running;
    80002294:	00008497          	auipc	s1,0x8
    80002298:	5144b483          	ld	s1,1300(s1) # 8000a7a8 <_ZN3PCB7runningE>

    void* operator new(size_t size);
    void operator delete(void *p);

    enum State{READY, RUNNING, SUSPENDED, FINISHED, EXITING, SLEEPING};
    State getState() {return state;}
    8000229c:	0404a703          	lw	a4,64(s1)
    if(old->getState() == PCB::RUNNING)
    800022a0:	00100793          	li	a5,1
    800022a4:	04f70a63          	beq	a4,a5,800022f8 <_ZN3PCB8dispatchEv+0x7c>
        Scheduler::put(old);
    PCB::running = Scheduler::get();
    800022a8:	00001097          	auipc	ra,0x1
    800022ac:	4d8080e7          	jalr	1240(ra) # 80003780 <_ZN9Scheduler3getEv>
    800022b0:	00008917          	auipc	s2,0x8
    800022b4:	4f890913          	addi	s2,s2,1272 # 8000a7a8 <_ZN3PCB7runningE>
    800022b8:	00a93023          	sd	a0,0(s2)
    void setState(State s) {state = s;}
    800022bc:	00100793          	li	a5,1
    800022c0:	04f52023          	sw	a5,64(a0)
    PCB::running->setState(PCB::RUNNING);

    Riscv::changePrivMode();
    800022c4:	00002097          	auipc	ra,0x2
    800022c8:	f60080e7          	jalr	-160(ra) # 80004224 <_ZN5Riscv14changePrivModeEv>

    PCB::contextSwitch(&old->context, &running->context);
    800022cc:	00093583          	ld	a1,0(s2)
    800022d0:	04858593          	addi	a1,a1,72
    800022d4:	04848513          	addi	a0,s1,72
    800022d8:	fffff097          	auipc	ra,0xfffff
    800022dc:	f60080e7          	jalr	-160(ra) # 80001238 <_ZN3PCB13contextSwitchEPNS_7ContextES1_>
}
    800022e0:	01813083          	ld	ra,24(sp)
    800022e4:	01013403          	ld	s0,16(sp)
    800022e8:	00813483          	ld	s1,8(sp)
    800022ec:	00013903          	ld	s2,0(sp)
    800022f0:	02010113          	addi	sp,sp,32
    800022f4:	00008067          	ret
        Scheduler::put(old);
    800022f8:	00048513          	mv	a0,s1
    800022fc:	00001097          	auipc	ra,0x1
    80002300:	430080e7          	jalr	1072(ra) # 8000372c <_ZN9Scheduler3putEP3PCB>
    80002304:	fa5ff06f          	j	800022a8 <_ZN3PCB8dispatchEv+0x2c>

0000000080002308 <_ZN3PCBnwEm>:

void *PCB::operator new(size_t size) {
    80002308:	ff010113          	addi	sp,sp,-16
    8000230c:	00113423          	sd	ra,8(sp)
    80002310:	00813023          	sd	s0,0(sp)
    80002314:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    80002318:	00002097          	auipc	ra,0x2
    8000231c:	644080e7          	jalr	1604(ra) # 8000495c <_ZN15MemoryAllocator7kmallocEm>
}
    80002320:	00813083          	ld	ra,8(sp)
    80002324:	00013403          	ld	s0,0(sp)
    80002328:	01010113          	addi	sp,sp,16
    8000232c:	00008067          	ret

0000000080002330 <_ZN3PCBdlEPv>:

void PCB::operator delete(void *p) {
    80002330:	ff010113          	addi	sp,sp,-16
    80002334:	00113423          	sd	ra,8(sp)
    80002338:	00813023          	sd	s0,0(sp)
    8000233c:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    80002340:	00002097          	auipc	ra,0x2
    80002344:	680080e7          	jalr	1664(ra) # 800049c0 <_ZN15MemoryAllocator5kfreeEPv>
}
    80002348:	00813083          	ld	ra,8(sp)
    8000234c:	00013403          	ld	s0,0(sp)
    80002350:	01010113          	addi	sp,sp,16
    80002354:	00008067          	ret

0000000080002358 <_ZN3PCBD1Ev>:

PCB::~PCB()
    80002358:	ff010113          	addi	sp,sp,-16
    8000235c:	00113423          	sd	ra,8(sp)
    80002360:	00813023          	sd	s0,0(sp)
    80002364:	01010413          	addi	s0,sp,16
{
    MemoryAllocator::kfree(beginSP);
    80002368:	03853503          	ld	a0,56(a0)
    8000236c:	00002097          	auipc	ra,0x2
    80002370:	654080e7          	jalr	1620(ra) # 800049c0 <_ZN15MemoryAllocator5kfreeEPv>
}
    80002374:	00813083          	ld	ra,8(sp)
    80002378:	00013403          	ld	s0,0(sp)
    8000237c:	01010113          	addi	sp,sp,16
    80002380:	00008067          	ret

0000000080002384 <_ZN3PCB10initializeEv>:

void PCB::initialize()
{
    80002384:	fd010113          	addi	sp,sp,-48
    80002388:	02113423          	sd	ra,40(sp)
    8000238c:	02813023          	sd	s0,32(sp)
    80002390:	00913c23          	sd	s1,24(sp)
    80002394:	01213823          	sd	s2,16(sp)
    80002398:	01313423          	sd	s3,8(sp)
    8000239c:	01413023          	sd	s4,0(sp)
    800023a0:	03010413          	addi	s0,sp,48
    PCB* mainSystem = new PCB(0, 0, 0, 0);
    800023a4:	06000513          	li	a0,96
    800023a8:	00000097          	auipc	ra,0x0
    800023ac:	f60080e7          	jalr	-160(ra) # 80002308 <_ZN3PCBnwEm>
    800023b0:	00050493          	mv	s1,a0
    800023b4:	00000713          	li	a4,0
    800023b8:	00000693          	li	a3,0
    800023bc:	00000613          	li	a2,0
    800023c0:	00000593          	li	a1,0
    800023c4:	00000097          	auipc	ra,0x0
    800023c8:	e40080e7          	jalr	-448(ra) # 80002204 <_ZN3PCBC1EPFvPvES0_S0_m>
    mainSystem->systemThread = true;
    800023cc:	00100793          	li	a5,1
    800023d0:	00f48023          	sb	a5,0(s1)
    PCB::running = mainSystem;
    800023d4:	00008917          	auipc	s2,0x8
    800023d8:	3d490913          	addi	s2,s2,980 # 8000a7a8 <_ZN3PCB7runningE>
    800023dc:	00993023          	sd	s1,0(s2)
    800023e0:	00100a13          	li	s4,1
    800023e4:	0544a023          	sw	s4,64(s1)
    PCB::running->setState(PCB::RUNNING);
    PCB::consolePCB = new PCB(&KConsole::sendCharactersToConsole, 0, MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    800023e8:	00001537          	lui	a0,0x1
    800023ec:	00002097          	auipc	ra,0x2
    800023f0:	570080e7          	jalr	1392(ra) # 8000495c <_ZN15MemoryAllocator7kmallocEm>
    800023f4:	00050993          	mv	s3,a0
    800023f8:	06000513          	li	a0,96
    800023fc:	00000097          	auipc	ra,0x0
    80002400:	f0c080e7          	jalr	-244(ra) # 80002308 <_ZN3PCBnwEm>
    80002404:	00050493          	mv	s1,a0
    80002408:	00200713          	li	a4,2
    8000240c:	00098693          	mv	a3,s3
    80002410:	00000613          	li	a2,0
    80002414:	00008597          	auipc	a1,0x8
    80002418:	3145b583          	ld	a1,788(a1) # 8000a728 <_GLOBAL_OFFSET_TABLE_+0x50>
    8000241c:	00000097          	auipc	ra,0x0
    80002420:	de8080e7          	jalr	-536(ra) # 80002204 <_ZN3PCBC1EPFvPvES0_S0_m>
    80002424:	00993423          	sd	s1,8(s2)
    PCB::consolePCB->systemThread = true;
    80002428:	01448023          	sb	s4,0(s1)
    PCB::consolePCB->start();
    8000242c:	00893503          	ld	a0,8(s2)
    80002430:	00000097          	auipc	ra,0x0
    80002434:	e24080e7          	jalr	-476(ra) # 80002254 <_ZN3PCB5startEv>
    PCB::userPCB = new PCB(&Riscv::userMainWrapper, 0, MemoryAllocator::kmalloc(DEFAULT_STACK_SIZE), DEFAULT_TIME_SLICE);
    80002438:	00001537          	lui	a0,0x1
    8000243c:	00002097          	auipc	ra,0x2
    80002440:	520080e7          	jalr	1312(ra) # 8000495c <_ZN15MemoryAllocator7kmallocEm>
    80002444:	00050993          	mv	s3,a0
    80002448:	06000513          	li	a0,96
    8000244c:	00000097          	auipc	ra,0x0
    80002450:	ebc080e7          	jalr	-324(ra) # 80002308 <_ZN3PCBnwEm>
    80002454:	00050493          	mv	s1,a0
    80002458:	00200713          	li	a4,2
    8000245c:	00098693          	mv	a3,s3
    80002460:	00000613          	li	a2,0
    80002464:	00008597          	auipc	a1,0x8
    80002468:	2ec5b583          	ld	a1,748(a1) # 8000a750 <_GLOBAL_OFFSET_TABLE_+0x78>
    8000246c:	00000097          	auipc	ra,0x0
    80002470:	d98080e7          	jalr	-616(ra) # 80002204 <_ZN3PCBC1EPFvPvES0_S0_m>
    80002474:	00993823          	sd	s1,16(s2)
    PCB::userPCB->start();
    80002478:	00048513          	mv	a0,s1
    8000247c:	00000097          	auipc	ra,0x0
    80002480:	dd8080e7          	jalr	-552(ra) # 80002254 <_ZN3PCB5startEv>
}
    80002484:	02813083          	ld	ra,40(sp)
    80002488:	02013403          	ld	s0,32(sp)
    8000248c:	01813483          	ld	s1,24(sp)
    80002490:	01013903          	ld	s2,16(sp)
    80002494:	00813983          	ld	s3,8(sp)
    80002498:	00013a03          	ld	s4,0(sp)
    8000249c:	03010113          	addi	sp,sp,48
    800024a0:	00008067          	ret

00000000800024a4 <_ZN3PCB10isFinishedEv>:

bool PCB::isFinished()
{
    800024a4:	ff010113          	addi	sp,sp,-16
    800024a8:	00813423          	sd	s0,8(sp)
    800024ac:	01010413          	addi	s0,sp,16
    return state == PCB::FINISHED;
    800024b0:	04052503          	lw	a0,64(a0) # 1040 <_entry-0x7fffefc0>
    800024b4:	ffd50513          	addi	a0,a0,-3
}
    800024b8:	00153513          	seqz	a0,a0
    800024bc:	00813403          	ld	s0,8(sp)
    800024c0:	01010113          	addi	sp,sp,16
    800024c4:	00008067          	ret

00000000800024c8 <_ZN3PCB17threadExitHandlerEv>:

void PCB::threadExitHandler()
{
    800024c8:	ff010113          	addi	sp,sp,-16
    800024cc:	00113423          	sd	ra,8(sp)
    800024d0:	00813023          	sd	s0,0(sp)
    800024d4:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    800024d8:	00008797          	auipc	a5,0x8
    800024dc:	2d078793          	addi	a5,a5,720 # 8000a7a8 <_ZN3PCB7runningE>
    800024e0:	0007bc23          	sd	zero,24(a5)
    PCB::running->setState(PCB::FINISHED);
    800024e4:	0007b783          	ld	a5,0(a5)
    800024e8:	00300713          	li	a4,3
    800024ec:	04e7a023          	sw	a4,64(a5)
    PCB::dispatch();
    800024f0:	00000097          	auipc	ra,0x0
    800024f4:	d8c080e7          	jalr	-628(ra) # 8000227c <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0");
    800024f8:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800024fc:	00002097          	auipc	ra,0x2
    80002500:	cf0080e7          	jalr	-784(ra) # 800041ec <_ZN5Riscv13w_a0_sscratchEv>
}
    80002504:	00813083          	ld	ra,8(sp)
    80002508:	00013403          	ld	s0,0(sp)
    8000250c:	01010113          	addi	sp,sp,16
    80002510:	00008067          	ret

0000000080002514 <_ZN3PCB21threadDispatchHandlerEv>:

void PCB::threadDispatchHandler()
{
    80002514:	ff010113          	addi	sp,sp,-16
    80002518:	00113423          	sd	ra,8(sp)
    8000251c:	00813023          	sd	s0,0(sp)
    80002520:	01010413          	addi	s0,sp,16
    PCB::timeSliceCounter = 0;
    80002524:	00008797          	auipc	a5,0x8
    80002528:	2807be23          	sd	zero,668(a5) # 8000a7c0 <_ZN3PCB16timeSliceCounterE>
    PCB::dispatch();
    8000252c:	00000097          	auipc	ra,0x0
    80002530:	d50080e7          	jalr	-688(ra) # 8000227c <_ZN3PCB8dispatchEv>
}
    80002534:	00813083          	ld	ra,8(sp)
    80002538:	00013403          	ld	s0,0(sp)
    8000253c:	01010113          	addi	sp,sp,16
    80002540:	00008067          	ret

0000000080002544 <_ZN3PCB18threadSleepHandlerEv>:

void PCB::threadSleepHandler()
{
    80002544:	ff010113          	addi	sp,sp,-16
    80002548:	00113423          	sd	ra,8(sp)
    8000254c:	00813023          	sd	s0,0(sp)
    80002550:	01010413          	addi	s0,sp,16
    uint64 time;
    __asm__ volatile("mv %0, a1" : "=r"(time));
    80002554:	00058793          	mv	a5,a1
    PCB::timeSliceCounter = 0;
    80002558:	00008717          	auipc	a4,0x8
    8000255c:	25070713          	addi	a4,a4,592 # 8000a7a8 <_ZN3PCB7runningE>
    80002560:	00073c23          	sd	zero,24(a4)
    PCB::running->setTimeToSleep(time + Riscv::totalTime);
    80002564:	00073703          	ld	a4,0(a4)
    80002568:	00008697          	auipc	a3,0x8
    8000256c:	1b86b683          	ld	a3,440(a3) # 8000a720 <_GLOBAL_OFFSET_TABLE_+0x48>
    80002570:	0006b683          	ld	a3,0(a3)
    80002574:	00d787b3          	add	a5,a5,a3
    void setTimeToSleep(uint64 time) {timeToSleep = time;}
    80002578:	02f73023          	sd	a5,32(a4)
    SleepPCBList::insertSleepingPCB();
    8000257c:	00001097          	auipc	ra,0x1
    80002580:	034080e7          	jalr	52(ra) # 800035b0 <_ZN12SleepPCBList17insertSleepingPCBEv>
    PCB::dispatch();
    80002584:	00000097          	auipc	ra,0x0
    80002588:	cf8080e7          	jalr	-776(ra) # 8000227c <_ZN3PCB8dispatchEv>
    __asm__ volatile("li a0, 0x0");
    8000258c:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80002590:	00002097          	auipc	ra,0x2
    80002594:	c5c080e7          	jalr	-932(ra) # 800041ec <_ZN5Riscv13w_a0_sscratchEv>
}
    80002598:	00813083          	ld	ra,8(sp)
    8000259c:	00013403          	ld	s0,0(sp)
    800025a0:	01010113          	addi	sp,sp,16
    800025a4:	00008067          	ret

00000000800025a8 <_ZN3PCB19threadCreateHandlerEv>:

void PCB::threadCreateHandler()
{
    800025a8:	fd010113          	addi	sp,sp,-48
    800025ac:	02113423          	sd	ra,40(sp)
    800025b0:	02813023          	sd	s0,32(sp)
    800025b4:	00913c23          	sd	s1,24(sp)
    800025b8:	01213823          	sd	s2,16(sp)
    800025bc:	01313423          	sd	s3,8(sp)
    800025c0:	01413023          	sd	s4,0(sp)
    800025c4:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    800025c8:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    800025cc:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    800025d0:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    800025d4:	06000513          	li	a0,96
    800025d8:	00000097          	auipc	ra,0x0
    800025dc:	d30080e7          	jalr	-720(ra) # 80002308 <_ZN3PCBnwEm>
    800025e0:	00050493          	mv	s1,a0
    800025e4:	00200713          	li	a4,2
    800025e8:	00008697          	auipc	a3,0x8
    800025ec:	1e06b683          	ld	a3,480(a3) # 8000a7c8 <_ZN3PCB10savedRegA4E>
    800025f0:	000a0613          	mv	a2,s4
    800025f4:	00098593          	mv	a1,s3
    800025f8:	00000097          	auipc	ra,0x0
    800025fc:	c0c080e7          	jalr	-1012(ra) # 80002204 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    80002600:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    80002604:	02048e63          	beqz	s1,80002640 <_ZN3PCB19threadCreateHandlerEv+0x98>
            __asm__ volatile("li a0, 0xffffffffffffffff");
    else
    {
        newPCB->start();
    80002608:	00048513          	mv	a0,s1
    8000260c:	00000097          	auipc	ra,0x0
    80002610:	c48080e7          	jalr	-952(ra) # 80002254 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002614:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80002618:	00002097          	auipc	ra,0x2
    8000261c:	bd4080e7          	jalr	-1068(ra) # 800041ec <_ZN5Riscv13w_a0_sscratchEv>
}
    80002620:	02813083          	ld	ra,40(sp)
    80002624:	02013403          	ld	s0,32(sp)
    80002628:	01813483          	ld	s1,24(sp)
    8000262c:	01013903          	ld	s2,16(sp)
    80002630:	00813983          	ld	s3,8(sp)
    80002634:	00013a03          	ld	s4,0(sp)
    80002638:	03010113          	addi	sp,sp,48
    8000263c:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80002640:	fff00513          	li	a0,-1
    80002644:	fd5ff06f          	j	80002618 <_ZN3PCB19threadCreateHandlerEv+0x70>

0000000080002648 <_ZN3PCB18threadStartHandlerEv>:

void PCB::threadStartHandler()
{
    80002648:	ff010113          	addi	sp,sp,-16
    8000264c:	00113423          	sd	ra,8(sp)
    80002650:	00813023          	sd	s0,0(sp)
    80002654:	01010413          	addi	s0,sp,16
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002658:	00058513          	mv	a0,a1
    if(pcb != 0)
    8000265c:	02050463          	beqz	a0,80002684 <_ZN3PCB18threadStartHandlerEv+0x3c>
    {
        pcb->start();
    80002660:	00000097          	auipc	ra,0x0
    80002664:	bf4080e7          	jalr	-1036(ra) # 80002254 <_ZN3PCB5startEv>
        __asm__ volatile("li a0, 0");
    80002668:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0xffffffffffffffff");
    }
    Riscv::w_a0_sscratch();
    8000266c:	00002097          	auipc	ra,0x2
    80002670:	b80080e7          	jalr	-1152(ra) # 800041ec <_ZN5Riscv13w_a0_sscratchEv>
}
    80002674:	00813083          	ld	ra,8(sp)
    80002678:	00013403          	ld	s0,0(sp)
    8000267c:	01010113          	addi	sp,sp,16
    80002680:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002684:	fff00513          	li	a0,-1
    80002688:	fe5ff06f          	j	8000266c <_ZN3PCB18threadStartHandlerEv+0x24>

000000008000268c <_ZN3PCB20threadMakePCBHandlerEv>:

void PCB::threadMakePCBHandler()
{
    8000268c:	fd010113          	addi	sp,sp,-48
    80002690:	02113423          	sd	ra,40(sp)
    80002694:	02813023          	sd	s0,32(sp)
    80002698:	00913c23          	sd	s1,24(sp)
    8000269c:	01213823          	sd	s2,16(sp)
    800026a0:	01313423          	sd	s3,8(sp)
    800026a4:	01413023          	sd	s4,0(sp)
    800026a8:	03010413          	addi	s0,sp,48
    uint64 start_routine;
    uint64 args;
    PCB **threadHandle;
    __asm__ volatile("mv %0, a1" : "=r"(threadHandle));
    800026ac:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(start_routine));
    800026b0:	00060993          	mv	s3,a2
    __asm__ volatile("mv %0, a3" : "=r"(args));
    800026b4:	00068a13          	mv	s4,a3

    PCB *newPCB = new PCB((void (*)(void *)) start_routine, (void *) args, (void *) PCB::savedRegA4, DEFAULT_TIME_SLICE);
    800026b8:	06000513          	li	a0,96
    800026bc:	00000097          	auipc	ra,0x0
    800026c0:	c4c080e7          	jalr	-948(ra) # 80002308 <_ZN3PCBnwEm>
    800026c4:	00050493          	mv	s1,a0
    800026c8:	00200713          	li	a4,2
    800026cc:	00008697          	auipc	a3,0x8
    800026d0:	0fc6b683          	ld	a3,252(a3) # 8000a7c8 <_ZN3PCB10savedRegA4E>
    800026d4:	000a0613          	mv	a2,s4
    800026d8:	00098593          	mv	a1,s3
    800026dc:	00000097          	auipc	ra,0x0
    800026e0:	b28080e7          	jalr	-1240(ra) # 80002204 <_ZN3PCBC1EPFvPvES0_S0_m>

    (*threadHandle) = newPCB;
    800026e4:	00993023          	sd	s1,0(s2)

    if (newPCB == 0)
    800026e8:	02048863          	beqz	s1,80002718 <_ZN3PCB20threadMakePCBHandlerEv+0x8c>
        __asm__ volatile("li a0, 0xffffffffffffffff");
    else
        __asm__ volatile("li a0, 0");
    800026ec:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    800026f0:	00002097          	auipc	ra,0x2
    800026f4:	afc080e7          	jalr	-1284(ra) # 800041ec <_ZN5Riscv13w_a0_sscratchEv>
}
    800026f8:	02813083          	ld	ra,40(sp)
    800026fc:	02013403          	ld	s0,32(sp)
    80002700:	01813483          	ld	s1,24(sp)
    80002704:	01013903          	ld	s2,16(sp)
    80002708:	00813983          	ld	s3,8(sp)
    8000270c:	00013a03          	ld	s4,0(sp)
    80002710:	03010113          	addi	sp,sp,48
    80002714:	00008067          	ret
        __asm__ volatile("li a0, 0xffffffffffffffff");
    80002718:	fff00513          	li	a0,-1
    8000271c:	fd5ff06f          	j	800026f0 <_ZN3PCB20threadMakePCBHandlerEv+0x64>

0000000080002720 <_ZN3PCB19threadDelPCBHandlerEv>:

void PCB::threadDelPCBHandler()
{
    80002720:	fe010113          	addi	sp,sp,-32
    80002724:	00113c23          	sd	ra,24(sp)
    80002728:	00813823          	sd	s0,16(sp)
    8000272c:	00913423          	sd	s1,8(sp)
    80002730:	02010413          	addi	s0,sp,32
    PCB* pcb;
    __asm__ volatile("mv %0, a1" : "=r"(pcb));
    80002734:	00058493          	mv	s1,a1
    if(pcb != 0)
    80002738:	02048e63          	beqz	s1,80002774 <_ZN3PCB19threadDelPCBHandlerEv+0x54>
    {
        delete pcb;
    8000273c:	00048513          	mv	a0,s1
    80002740:	00000097          	auipc	ra,0x0
    80002744:	c18080e7          	jalr	-1000(ra) # 80002358 <_ZN3PCBD1Ev>
    80002748:	00048513          	mv	a0,s1
    8000274c:	00000097          	auipc	ra,0x0
    80002750:	be4080e7          	jalr	-1052(ra) # 80002330 <_ZN3PCBdlEPv>
        __asm__ volatile("li a0, 0x0");
    80002754:	00000513          	li	a0,0
    }
    else
    {
        __asm__ volatile("li a0, 0x1");
    }
    Riscv::w_a0_sscratch();
    80002758:	00002097          	auipc	ra,0x2
    8000275c:	a94080e7          	jalr	-1388(ra) # 800041ec <_ZN5Riscv13w_a0_sscratchEv>
}
    80002760:	01813083          	ld	ra,24(sp)
    80002764:	01013403          	ld	s0,16(sp)
    80002768:	00813483          	ld	s1,8(sp)
    8000276c:	02010113          	addi	sp,sp,32
    80002770:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    80002774:	00100513          	li	a0,1
    80002778:	fe1ff06f          	j	80002758 <_ZN3PCB19threadDelPCBHandlerEv+0x38>

000000008000277c <_Z12getBlockAddrm>:
    size_t level = getDeg2Ceil(numOfBlocks);
    addBlocks(buddy, addr, level); //adds free blocks
}

size_t getBlockAddr(size_t addr)
{
    8000277c:	ff010113          	addi	sp,sp,-16
    80002780:	00813423          	sd	s0,8(sp)
    80002784:	01010413          	addi	s0,sp,16
    size_t mask = ((size_t)-1) << BLOCK_SIZE_POWER_2;
    return addr & mask;
}
    80002788:	fffff7b7          	lui	a5,0xfffff
    8000278c:	00f57533          	and	a0,a0,a5
    80002790:	00813403          	ld	s0,8(sp)
    80002794:	01010113          	addi	sp,sp,16
    80002798:	00008067          	ret

000000008000279c <_Z16getNextBlockAddrm>:
size_t getNextBlockAddr(size_t addr)
{
    8000279c:	ff010113          	addi	sp,sp,-16
    800027a0:	00113423          	sd	ra,8(sp)
    800027a4:	00813023          	sd	s0,0(sp)
    800027a8:	01010413          	addi	s0,sp,16
    size_t currBlock = getBlockAddr(addr);
    800027ac:	00000097          	auipc	ra,0x0
    800027b0:	fd0080e7          	jalr	-48(ra) # 8000277c <_Z12getBlockAddrm>
    return currBlock + BLOCK_SIZE;
}
    800027b4:	000017b7          	lui	a5,0x1
    800027b8:	00f50533          	add	a0,a0,a5
    800027bc:	00813083          	ld	ra,8(sp)
    800027c0:	00013403          	ld	s0,0(sp)
    800027c4:	01010113          	addi	sp,sp,16
    800027c8:	00008067          	ret

00000000800027cc <_Z12getDeg2Floorm>:

size_t getDeg2Floor(size_t num)
{
    800027cc:	ff010113          	addi	sp,sp,-16
    800027d0:	00813423          	sd	s0,8(sp)
    800027d4:	01010413          	addi	s0,sp,16
    size_t x = 1;
    size_t deg = 0;
    800027d8:	00000713          	li	a4,0
    size_t x = 1;
    800027dc:	00100793          	li	a5,1
    while(x <= num)
    800027e0:	00f56863          	bltu	a0,a5,800027f0 <_Z12getDeg2Floorm+0x24>
    {
        deg++;
    800027e4:	00170713          	addi	a4,a4,1
        x<<=1;
    800027e8:	00179793          	slli	a5,a5,0x1
    while(x <= num)
    800027ec:	ff5ff06f          	j	800027e0 <_Z12getDeg2Floorm+0x14>
    }
    return deg - 1;
}
    800027f0:	fff70513          	addi	a0,a4,-1
    800027f4:	00813403          	ld	s0,8(sp)
    800027f8:	01010113          	addi	sp,sp,16
    800027fc:	00008067          	ret

0000000080002800 <_Z11getDeg2Ceilm>:

size_t getDeg2Ceil(size_t num)
{
    80002800:	ff010113          	addi	sp,sp,-16
    80002804:	00813423          	sd	s0,8(sp)
    80002808:	01010413          	addi	s0,sp,16
    8000280c:	00050713          	mv	a4,a0
    size_t x = 1;
    size_t deg = 0;
    80002810:	00000513          	li	a0,0
    size_t x = 1;
    80002814:	00100793          	li	a5,1
    while(x < num)
    80002818:	00e7f863          	bgeu	a5,a4,80002828 <_Z11getDeg2Ceilm+0x28>
    {
        deg++;
    8000281c:	00150513          	addi	a0,a0,1
        x<<=1;
    80002820:	00179793          	slli	a5,a5,0x1
    while(x < num)
    80002824:	ff5ff06f          	j	80002818 <_Z11getDeg2Ceilm+0x18>
    }
    return deg;
}
    80002828:	00813403          	ld	s0,8(sp)
    8000282c:	01010113          	addi	sp,sp,16
    80002830:	00008067          	ret

0000000080002834 <_Z15addBlockToLevelP14buddyAllocatorPvm>:
    addBlockToLevel(buddy, addr, level);
}

//adds free block to level
void addBlockToLevel(buddyAllocator* buddy, void* addr, size_t level)
{
    80002834:	ff010113          	addi	sp,sp,-16
    80002838:	00813423          	sd	s0,8(sp)
    8000283c:	01010413          	addi	s0,sp,16
    buddyBlock* newBlock = (buddyBlock*)addr;
    newBlock->next = nullptr;
    80002840:	0005b023          	sd	zero,0(a1)
    if(buddy->bucket[level].first == nullptr)
    80002844:	00260793          	addi	a5,a2,2
    80002848:	00479793          	slli	a5,a5,0x4
    8000284c:	00f507b3          	add	a5,a0,a5
    80002850:	0007b783          	ld	a5,0(a5) # 1000 <_entry-0x7ffff000>
    80002854:	02078463          	beqz	a5,8000287c <_Z15addBlockToLevelP14buddyAllocatorPvm+0x48>
    {
        buddy->bucket[level].first = buddy->bucket[level].last = newBlock;
    }
    else
    {
        buddy->bucket[level].last->next = newBlock;
    80002858:	00260613          	addi	a2,a2,2
    8000285c:	00461613          	slli	a2,a2,0x4
    80002860:	00c50633          	add	a2,a0,a2
    80002864:	00863783          	ld	a5,8(a2)
    80002868:	00b7b023          	sd	a1,0(a5)
        buddy->bucket[level].last = newBlock;
    8000286c:	00b63423          	sd	a1,8(a2)
    }
}
    80002870:	00813403          	ld	s0,8(sp)
    80002874:	01010113          	addi	sp,sp,16
    80002878:	00008067          	ret
        buddy->bucket[level].first = buddy->bucket[level].last = newBlock;
    8000287c:	00260613          	addi	a2,a2,2
    80002880:	00461613          	slli	a2,a2,0x4
    80002884:	00c50633          	add	a2,a0,a2
    80002888:	00b63423          	sd	a1,8(a2)
    8000288c:	00b63023          	sd	a1,0(a2)
    80002890:	fe1ff06f          	j	80002870 <_Z15addBlockToLevelP14buddyAllocatorPvm+0x3c>

0000000080002894 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm>:

size_t getBuddyBlockAddr(buddyAllocator* buddy, void* addr, size_t level)
{
    80002894:	ff010113          	addi	sp,sp,-16
    80002898:	00813423          	sd	s0,8(sp)
    8000289c:	01010413          	addi	s0,sp,16
    size_t diff = BLOCK_SIZE << level;
    800028a0:	000017b7          	lui	a5,0x1
    800028a4:	00c7963b          	sllw	a2,a5,a2
    size_t off = (size_t)addr - (size_t)buddy->startAddr;
    800028a8:	00853783          	ld	a5,8(a0)
    800028ac:	40f587b3          	sub	a5,a1,a5
    if(diff & off)
    800028b0:	00f677b3          	and	a5,a2,a5
    800028b4:	00078a63          	beqz	a5,800028c8 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm+0x34>
        return (size_t)addr - diff;
    800028b8:	40c58533          	sub	a0,a1,a2
    else
        return (size_t)addr + diff;
}
    800028bc:	00813403          	ld	s0,8(sp)
    800028c0:	01010113          	addi	sp,sp,16
    800028c4:	00008067          	ret
        return (size_t)addr + diff;
    800028c8:	00c58533          	add	a0,a1,a2
    800028cc:	ff1ff06f          	j	800028bc <_Z17getBuddyBlockAddrP14buddyAllocatorPvm+0x28>

00000000800028d0 <_Z5splitP14buddyAllocatorPvmmb>:
{
    800028d0:	fd010113          	addi	sp,sp,-48
    800028d4:	02113423          	sd	ra,40(sp)
    800028d8:	02813023          	sd	s0,32(sp)
    800028dc:	00913c23          	sd	s1,24(sp)
    800028e0:	01213823          	sd	s2,16(sp)
    800028e4:	01313423          	sd	s3,8(sp)
    800028e8:	01413023          	sd	s4,0(sp)
    800028ec:	03010413          	addi	s0,sp,48
    800028f0:	00050913          	mv	s2,a0
    800028f4:	00058a13          	mv	s4,a1
    if(!splitMore)
    800028f8:	06070a63          	beqz	a4,8000296c <_Z5splitP14buddyAllocatorPvmmb+0x9c>
    800028fc:	00060993          	mv	s3,a2
        if(currLevel == finalLevel)
    80002900:	04c68663          	beq	a3,a2,8000294c <_Z5splitP14buddyAllocatorPvmmb+0x7c>
        size_t buddyBlock = getBuddyBlockAddr(buddy, addr, currLevel - 1); // currLevel - 1 for next step
    80002904:	fff68493          	addi	s1,a3,-1
    80002908:	00048613          	mv	a2,s1
    8000290c:	00000097          	auipc	ra,0x0
    80002910:	f88080e7          	jalr	-120(ra) # 80002894 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm>
    80002914:	00050593          	mv	a1,a0
        split(buddy, (void*)buddyBlock, finalLevel, currLevel - 1, false); // continue splitting
    80002918:	00000713          	li	a4,0
    8000291c:	00048693          	mv	a3,s1
    80002920:	00098613          	mv	a2,s3
    80002924:	00090513          	mv	a0,s2
    80002928:	00000097          	auipc	ra,0x0
    8000292c:	fa8080e7          	jalr	-88(ra) # 800028d0 <_Z5splitP14buddyAllocatorPvmmb>
        split(buddy, addr, finalLevel, currLevel - 1, true); // continue splitting
    80002930:	00100713          	li	a4,1
    80002934:	00048693          	mv	a3,s1
    80002938:	00098613          	mv	a2,s3
    8000293c:	000a0593          	mv	a1,s4
    80002940:	00090513          	mv	a0,s2
    80002944:	00000097          	auipc	ra,0x0
    80002948:	f8c080e7          	jalr	-116(ra) # 800028d0 <_Z5splitP14buddyAllocatorPvmmb>
}
    8000294c:	02813083          	ld	ra,40(sp)
    80002950:	02013403          	ld	s0,32(sp)
    80002954:	01813483          	ld	s1,24(sp)
    80002958:	01013903          	ld	s2,16(sp)
    8000295c:	00813983          	ld	s3,8(sp)
    80002960:	00013a03          	ld	s4,0(sp)
    80002964:	03010113          	addi	sp,sp,48
    80002968:	00008067          	ret
        addBlockToLevel(buddy, addr, currLevel);
    8000296c:	00068613          	mv	a2,a3
    80002970:	00000097          	auipc	ra,0x0
    80002974:	ec4080e7          	jalr	-316(ra) # 80002834 <_Z15addBlockToLevelP14buddyAllocatorPvm>
    80002978:	fd5ff06f          	j	8000294c <_Z5splitP14buddyAllocatorPvmmb+0x7c>

000000008000297c <_Z11buddy_allocP14buddyAllocatorm>:
{
    8000297c:	fd010113          	addi	sp,sp,-48
    80002980:	02113423          	sd	ra,40(sp)
    80002984:	02813023          	sd	s0,32(sp)
    80002988:	00913c23          	sd	s1,24(sp)
    8000298c:	01213823          	sd	s2,16(sp)
    80002990:	01313423          	sd	s3,8(sp)
    80002994:	01413023          	sd	s4,0(sp)
    80002998:	03010413          	addi	s0,sp,48
    8000299c:	00050913          	mv	s2,a0
    800029a0:	00058493          	mv	s1,a1
    KConsole::trapPrintString("Buddy allocation: ");
    800029a4:	00005517          	auipc	a0,0x5
    800029a8:	78c50513          	addi	a0,a0,1932 # 80008130 <CONSOLE_STATUS+0x120>
    800029ac:	00001097          	auipc	ra,0x1
    800029b0:	b2c080e7          	jalr	-1236(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(numOfBlocks); KConsole::trapPrintString("\n");
    800029b4:	00000613          	li	a2,0
    800029b8:	00a00593          	li	a1,10
    800029bc:	00048513          	mv	a0,s1
    800029c0:	00001097          	auipc	ra,0x1
    800029c4:	b5c080e7          	jalr	-1188(ra) # 8000351c <_ZN8KConsole12trapPrintIntEmii>
    800029c8:	00006517          	auipc	a0,0x6
    800029cc:	c3850513          	addi	a0,a0,-968 # 80008600 <CONSOLE_STATUS+0x5f0>
    800029d0:	00001097          	auipc	ra,0x1
    800029d4:	b08080e7          	jalr	-1272(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
    size_t level = getDeg2Ceil(numOfBlocks);
    800029d8:	00048513          	mv	a0,s1
    800029dc:	00000097          	auipc	ra,0x0
    800029e0:	e24080e7          	jalr	-476(ra) # 80002800 <_Z11getDeg2Ceilm>
    800029e4:	00050a13          	mv	s4,a0
    KConsole::trapPrintString("Level: ");
    800029e8:	00005517          	auipc	a0,0x5
    800029ec:	76050513          	addi	a0,a0,1888 # 80008148 <CONSOLE_STATUS+0x138>
    800029f0:	00001097          	auipc	ra,0x1
    800029f4:	ae8080e7          	jalr	-1304(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(level); KConsole::trapPrintString("\n");
    800029f8:	00000613          	li	a2,0
    800029fc:	00a00593          	li	a1,10
    80002a00:	000a0513          	mv	a0,s4
    80002a04:	00001097          	auipc	ra,0x1
    80002a08:	b18080e7          	jalr	-1256(ra) # 8000351c <_ZN8KConsole12trapPrintIntEmii>
    80002a0c:	00006517          	auipc	a0,0x6
    80002a10:	bf450513          	addi	a0,a0,-1036 # 80008600 <CONSOLE_STATUS+0x5f0>
    80002a14:	00001097          	auipc	ra,0x1
    80002a18:	ac4080e7          	jalr	-1340(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80002a1c:	000a0493          	mv	s1,s4
    80002a20:	01893783          	ld	a5,24(s2)
    80002a24:	0a97e063          	bltu	a5,s1,80002ac4 <_Z11buddy_allocP14buddyAllocatorm+0x148>
        if(buddy->bucket[i].first != nullptr)
    80002a28:	00248793          	addi	a5,s1,2
    80002a2c:	00479793          	slli	a5,a5,0x4
    80002a30:	00f907b3          	add	a5,s2,a5
    80002a34:	0007b983          	ld	s3,0(a5) # 1000 <_entry-0x7ffff000>
    80002a38:	00099663          	bnez	s3,80002a44 <_Z11buddy_allocP14buddyAllocatorm+0xc8>
    for(size_t i = level; i <= buddy->maxLevel;i++)
    80002a3c:	00148493          	addi	s1,s1,1
    80002a40:	fe1ff06f          	j	80002a20 <_Z11buddy_allocP14buddyAllocatorm+0xa4>
            KConsole::trapPrintString("Found the block:");
    80002a44:	00005517          	auipc	a0,0x5
    80002a48:	70c50513          	addi	a0,a0,1804 # 80008150 <CONSOLE_STATUS+0x140>
    80002a4c:	00001097          	auipc	ra,0x1
    80002a50:	a8c080e7          	jalr	-1396(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
            KConsole::trapPrintInt((size_t)ret, 16); KConsole::trapPrintString("\n");
    80002a54:	00000613          	li	a2,0
    80002a58:	01000593          	li	a1,16
    80002a5c:	00098513          	mv	a0,s3
    80002a60:	00001097          	auipc	ra,0x1
    80002a64:	abc080e7          	jalr	-1348(ra) # 8000351c <_ZN8KConsole12trapPrintIntEmii>
    80002a68:	00006517          	auipc	a0,0x6
    80002a6c:	b9850513          	addi	a0,a0,-1128 # 80008600 <CONSOLE_STATUS+0x5f0>
    80002a70:	00001097          	auipc	ra,0x1
    80002a74:	a68080e7          	jalr	-1432(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
            buddy->bucket[i].first = ret->next;
    80002a78:	0009b703          	ld	a4,0(s3)
    80002a7c:	00248793          	addi	a5,s1,2
    80002a80:	00479793          	slli	a5,a5,0x4
    80002a84:	00f907b3          	add	a5,s2,a5
    80002a88:	00e7b023          	sd	a4,0(a5)
            if(buddy->bucket[i].first == nullptr)
    80002a8c:	02070263          	beqz	a4,80002ab0 <_Z11buddy_allocP14buddyAllocatorm+0x134>
            split(buddy, (void*)ret, level, i, true);
    80002a90:	00100713          	li	a4,1
    80002a94:	00048693          	mv	a3,s1
    80002a98:	000a0613          	mv	a2,s4
    80002a9c:	00098593          	mv	a1,s3
    80002aa0:	00090513          	mv	a0,s2
    80002aa4:	00000097          	auipc	ra,0x0
    80002aa8:	e2c080e7          	jalr	-468(ra) # 800028d0 <_Z5splitP14buddyAllocatorPvmmb>
            return ret;
    80002aac:	01c0006f          	j	80002ac8 <_Z11buddy_allocP14buddyAllocatorm+0x14c>
                buddy->bucket[i].last = nullptr;
    80002ab0:	00248793          	addi	a5,s1,2
    80002ab4:	00479793          	slli	a5,a5,0x4
    80002ab8:	00f907b3          	add	a5,s2,a5
    80002abc:	0007b423          	sd	zero,8(a5)
    80002ac0:	fd1ff06f          	j	80002a90 <_Z11buddy_allocP14buddyAllocatorm+0x114>
    return nullptr;
    80002ac4:	00000993          	li	s3,0
}
    80002ac8:	00098513          	mv	a0,s3
    80002acc:	02813083          	ld	ra,40(sp)
    80002ad0:	02013403          	ld	s0,32(sp)
    80002ad4:	01813483          	ld	s1,24(sp)
    80002ad8:	01013903          	ld	s2,16(sp)
    80002adc:	00813983          	ld	s3,8(sp)
    80002ae0:	00013a03          	ld	s4,0(sp)
    80002ae4:	03010113          	addi	sp,sp,48
    80002ae8:	00008067          	ret

0000000080002aec <_Z9addBlocksP14buddyAllocatorPvm>:
{
    80002aec:	fd010113          	addi	sp,sp,-48
    80002af0:	02113423          	sd	ra,40(sp)
    80002af4:	02813023          	sd	s0,32(sp)
    80002af8:	00913c23          	sd	s1,24(sp)
    80002afc:	01213823          	sd	s2,16(sp)
    80002b00:	01313423          	sd	s3,8(sp)
    80002b04:	01413023          	sd	s4,0(sp)
    80002b08:	03010413          	addi	s0,sp,48
    80002b0c:	00050913          	mv	s2,a0
    80002b10:	00058a13          	mv	s4,a1
    80002b14:	00060993          	mv	s3,a2
    if(level == buddy->maxLevel)
    80002b18:	01853783          	ld	a5,24(a0)
    80002b1c:	06c78663          	beq	a5,a2,80002b88 <_Z9addBlocksP14buddyAllocatorPvm+0x9c>
    size_t buddyBlockAddr = getBuddyBlockAddr(buddy,addr,level);
    80002b20:	00000097          	auipc	ra,0x0
    80002b24:	d74080e7          	jalr	-652(ra) # 80002894 <_Z17getBuddyBlockAddrP14buddyAllocatorPvm>
    80002b28:	00050493          	mv	s1,a0
    KConsole::trapPrintString("Buddy block addr ");
    80002b2c:	00005517          	auipc	a0,0x5
    80002b30:	63c50513          	addi	a0,a0,1596 # 80008168 <CONSOLE_STATUS+0x158>
    80002b34:	00001097          	auipc	ra,0x1
    80002b38:	9a4080e7          	jalr	-1628(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(buddyBlockAddr, 16); KConsole::trapPrintString("\n");
    80002b3c:	00000613          	li	a2,0
    80002b40:	01000593          	li	a1,16
    80002b44:	00048513          	mv	a0,s1
    80002b48:	00001097          	auipc	ra,0x1
    80002b4c:	9d4080e7          	jalr	-1580(ra) # 8000351c <_ZN8KConsole12trapPrintIntEmii>
    80002b50:	00006517          	auipc	a0,0x6
    80002b54:	ab050513          	addi	a0,a0,-1360 # 80008600 <CONSOLE_STATUS+0x5f0>
    80002b58:	00001097          	auipc	ra,0x1
    80002b5c:	980080e7          	jalr	-1664(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
    buddyBlock* curr = buddy->bucket[level].first;
    80002b60:	00298793          	addi	a5,s3,2
    80002b64:	00479793          	slli	a5,a5,0x4
    80002b68:	00f907b3          	add	a5,s2,a5
    80002b6c:	0007b783          	ld	a5,0(a5)
    buddyBlock* prev = nullptr;
    80002b70:	00000713          	li	a4,0
    while(curr != nullptr)
    80002b74:	0a078e63          	beqz	a5,80002c30 <_Z9addBlocksP14buddyAllocatorPvm+0x144>
        if((size_t)curr == buddyBlockAddr)
    80002b78:	00978e63          	beq	a5,s1,80002b94 <_Z9addBlocksP14buddyAllocatorPvm+0xa8>
        prev = curr;
    80002b7c:	00078713          	mv	a4,a5
        curr = curr->next;
    80002b80:	0007b783          	ld	a5,0(a5)
    while(curr != nullptr)
    80002b84:	ff1ff06f          	j	80002b74 <_Z9addBlocksP14buddyAllocatorPvm+0x88>
        addBlockToLevel(buddy, addr, level);
    80002b88:	00000097          	auipc	ra,0x0
    80002b8c:	cac080e7          	jalr	-852(ra) # 80002834 <_Z15addBlockToLevelP14buddyAllocatorPvm>
        return;
    80002b90:	0b40006f          	j	80002c44 <_Z9addBlocksP14buddyAllocatorPvm+0x158>
            if(prev != nullptr)
    80002b94:	04070863          	beqz	a4,80002be4 <_Z9addBlocksP14buddyAllocatorPvm+0xf8>
                prev->next = curr->next;
    80002b98:	0007b683          	ld	a3,0(a5)
    80002b9c:	00d73023          	sd	a3,0(a4)
                if(curr == buddy->bucket[level].last)
    80002ba0:	00298693          	addi	a3,s3,2
    80002ba4:	00469693          	slli	a3,a3,0x4
    80002ba8:	00d906b3          	add	a3,s2,a3
    80002bac:	0086b683          	ld	a3,8(a3)
    80002bb0:	02f68063          	beq	a3,a5,80002bd0 <_Z9addBlocksP14buddyAllocatorPvm+0xe4>
            if((size_t)addr < buddyBlockAddr) addBlocks(buddy, addr, level + 1); //merge two chunks
    80002bb4:	069a7263          	bgeu	s4,s1,80002c18 <_Z9addBlocksP14buddyAllocatorPvm+0x12c>
    80002bb8:	00198613          	addi	a2,s3,1
    80002bbc:	000a0593          	mv	a1,s4
    80002bc0:	00090513          	mv	a0,s2
    80002bc4:	00000097          	auipc	ra,0x0
    80002bc8:	f28080e7          	jalr	-216(ra) # 80002aec <_Z9addBlocksP14buddyAllocatorPvm>
    80002bcc:	0780006f          	j	80002c44 <_Z9addBlocksP14buddyAllocatorPvm+0x158>
                    buddy->bucket[level].last = prev;
    80002bd0:	00298793          	addi	a5,s3,2
    80002bd4:	00479793          	slli	a5,a5,0x4
    80002bd8:	00f907b3          	add	a5,s2,a5
    80002bdc:	00e7b423          	sd	a4,8(a5)
    80002be0:	fd5ff06f          	j	80002bb4 <_Z9addBlocksP14buddyAllocatorPvm+0xc8>
                if(curr->next == nullptr)
    80002be4:	0007b703          	ld	a4,0(a5)
    80002be8:	00070c63          	beqz	a4,80002c00 <_Z9addBlocksP14buddyAllocatorPvm+0x114>
                    buddy->bucket[level].first = curr->next;
    80002bec:	00298793          	addi	a5,s3,2
    80002bf0:	00479793          	slli	a5,a5,0x4
    80002bf4:	00f907b3          	add	a5,s2,a5
    80002bf8:	00e7b023          	sd	a4,0(a5)
    80002bfc:	fb9ff06f          	j	80002bb4 <_Z9addBlocksP14buddyAllocatorPvm+0xc8>
                    buddy->bucket[level].first = buddy->bucket[level].last = nullptr;
    80002c00:	00298793          	addi	a5,s3,2
    80002c04:	00479793          	slli	a5,a5,0x4
    80002c08:	00f907b3          	add	a5,s2,a5
    80002c0c:	0007b423          	sd	zero,8(a5)
    80002c10:	0007b023          	sd	zero,0(a5)
    80002c14:	fa1ff06f          	j	80002bb4 <_Z9addBlocksP14buddyAllocatorPvm+0xc8>
            else addBlocks(buddy, (void*)buddyBlockAddr, level + 1); //merge two chunks
    80002c18:	00198613          	addi	a2,s3,1
    80002c1c:	00048593          	mv	a1,s1
    80002c20:	00090513          	mv	a0,s2
    80002c24:	00000097          	auipc	ra,0x0
    80002c28:	ec8080e7          	jalr	-312(ra) # 80002aec <_Z9addBlocksP14buddyAllocatorPvm>
            return;
    80002c2c:	0180006f          	j	80002c44 <_Z9addBlocksP14buddyAllocatorPvm+0x158>
    addBlockToLevel(buddy, addr, level);
    80002c30:	00098613          	mv	a2,s3
    80002c34:	000a0593          	mv	a1,s4
    80002c38:	00090513          	mv	a0,s2
    80002c3c:	00000097          	auipc	ra,0x0
    80002c40:	bf8080e7          	jalr	-1032(ra) # 80002834 <_Z15addBlockToLevelP14buddyAllocatorPvm>
}
    80002c44:	02813083          	ld	ra,40(sp)
    80002c48:	02013403          	ld	s0,32(sp)
    80002c4c:	01813483          	ld	s1,24(sp)
    80002c50:	01013903          	ld	s2,16(sp)
    80002c54:	00813983          	ld	s3,8(sp)
    80002c58:	00013a03          	ld	s4,0(sp)
    80002c5c:	03010113          	addi	sp,sp,48
    80002c60:	00008067          	ret

0000000080002c64 <_Z10buddy_initPvm>:
{
    80002c64:	fd010113          	addi	sp,sp,-48
    80002c68:	02113423          	sd	ra,40(sp)
    80002c6c:	02813023          	sd	s0,32(sp)
    80002c70:	00913c23          	sd	s1,24(sp)
    80002c74:	01213823          	sd	s2,16(sp)
    80002c78:	01313423          	sd	s3,8(sp)
    80002c7c:	01413023          	sd	s4,0(sp)
    80002c80:	03010413          	addi	s0,sp,48
    80002c84:	00050913          	mv	s2,a0
    80002c88:	00058993          	mv	s3,a1
    KConsole::trapPrintString("Buddy initialization\n");
    80002c8c:	00005517          	auipc	a0,0x5
    80002c90:	4f450513          	addi	a0,a0,1268 # 80008180 <CONSOLE_STATUS+0x170>
    80002c94:	00001097          	auipc	ra,0x1
    80002c98:	844080e7          	jalr	-1980(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
    size_t blockAddr = getBlockAddr((size_t)addr); //alling the address
    80002c9c:	00090493          	mv	s1,s2
    80002ca0:	00090513          	mv	a0,s2
    80002ca4:	00000097          	auipc	ra,0x0
    80002ca8:	ad8080e7          	jalr	-1320(ra) # 8000277c <_Z12getBlockAddrm>
    80002cac:	00050a13          	mv	s4,a0
    KConsole::trapPrintInt(blockAddr,16); KConsole::trapPrintString("\n");
    80002cb0:	00000613          	li	a2,0
    80002cb4:	01000593          	li	a1,16
    80002cb8:	00001097          	auipc	ra,0x1
    80002cbc:	864080e7          	jalr	-1948(ra) # 8000351c <_ZN8KConsole12trapPrintIntEmii>
    80002cc0:	00006517          	auipc	a0,0x6
    80002cc4:	94050513          	addi	a0,a0,-1728 # 80008600 <CONSOLE_STATUS+0x5f0>
    80002cc8:	00001097          	auipc	ra,0x1
    80002ccc:	810080e7          	jalr	-2032(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(buddyAddr,16); KConsole::trapPrintString("\n");
    80002cd0:	00000613          	li	a2,0
    80002cd4:	01000593          	li	a1,16
    80002cd8:	00090513          	mv	a0,s2
    80002cdc:	00001097          	auipc	ra,0x1
    80002ce0:	840080e7          	jalr	-1984(ra) # 8000351c <_ZN8KConsole12trapPrintIntEmii>
    80002ce4:	00006517          	auipc	a0,0x6
    80002ce8:	91c50513          	addi	a0,a0,-1764 # 80008600 <CONSOLE_STATUS+0x5f0>
    80002cec:	00000097          	auipc	ra,0x0
    80002cf0:	7ec080e7          	jalr	2028(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
    if((size_t)addr != blockAddr) // if start address not aligned
    80002cf4:	01490c63          	beq	s2,s4,80002d0c <_Z10buddy_initPvm+0xa8>
        buddyAddr = getNextBlockAddr(blockAddr);
    80002cf8:	000a0513          	mv	a0,s4
    80002cfc:	00000097          	auipc	ra,0x0
    80002d00:	aa0080e7          	jalr	-1376(ra) # 8000279c <_Z16getNextBlockAddrm>
    80002d04:	00050493          	mv	s1,a0
        numOfBlocks--; //have to discard one block
    80002d08:	fff98993          	addi	s3,s3,-1
    KConsole::trapPrintString("Buddy metadata address: ");
    80002d0c:	00005517          	auipc	a0,0x5
    80002d10:	48c50513          	addi	a0,a0,1164 # 80008198 <CONSOLE_STATUS+0x188>
    80002d14:	00000097          	auipc	ra,0x0
    80002d18:	7c4080e7          	jalr	1988(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(buddyAddr,16); KConsole::trapPrintString("\n");
    80002d1c:	00000613          	li	a2,0
    80002d20:	01000593          	li	a1,16
    80002d24:	00048513          	mv	a0,s1
    80002d28:	00000097          	auipc	ra,0x0
    80002d2c:	7f4080e7          	jalr	2036(ra) # 8000351c <_ZN8KConsole12trapPrintIntEmii>
    80002d30:	00006517          	auipc	a0,0x6
    80002d34:	8d050513          	addi	a0,a0,-1840 # 80008600 <CONSOLE_STATUS+0x5f0>
    80002d38:	00000097          	auipc	ra,0x0
    80002d3c:	7a0080e7          	jalr	1952(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
    numOfBlocks--; // take one block for buddy metadata
    80002d40:	fff98993          	addi	s3,s3,-1
    buddyAllocator* buddy = (buddyAllocator*)buddyAddr;
    80002d44:	00048913          	mv	s2,s1
    buddy->startAddr = (void*)getNextBlockAddr(buddyAddr);
    80002d48:	00048513          	mv	a0,s1
    80002d4c:	00000097          	auipc	ra,0x0
    80002d50:	a50080e7          	jalr	-1456(ra) # 8000279c <_Z16getNextBlockAddrm>
    80002d54:	00a4b423          	sd	a0,8(s1)
    buddy->numOfBlocks = numOfBlocks;
    80002d58:	0134b023          	sd	s3,0(s1)
    buddy->numOfFreeBlocks = numOfBlocks;
    80002d5c:	0134b823          	sd	s3,16(s1)
    buddy->maxLevel = getDeg2Floor(numOfBlocks);
    80002d60:	00098513          	mv	a0,s3
    80002d64:	00000097          	auipc	ra,0x0
    80002d68:	a68080e7          	jalr	-1432(ra) # 800027cc <_Z12getDeg2Floorm>
    80002d6c:	00a4bc23          	sd	a0,24(s1)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    80002d70:	00000713          	li	a4,0
    80002d74:	02e56063          	bltu	a0,a4,80002d94 <_Z10buddy_initPvm+0x130>
        buddy->bucket[i].first = buddy->bucket[i].last = nullptr;
    80002d78:	00270793          	addi	a5,a4,2
    80002d7c:	00479793          	slli	a5,a5,0x4
    80002d80:	00f907b3          	add	a5,s2,a5
    80002d84:	0007b423          	sd	zero,8(a5)
    80002d88:	0007b023          	sd	zero,0(a5)
    for(size_t i = 0; i <= buddy->maxLevel;i++)
    80002d8c:	00170713          	addi	a4,a4,1
    80002d90:	fe5ff06f          	j	80002d74 <_Z10buddy_initPvm+0x110>
    for(size_t i = 0;i < numOfBlocks;i++)
    80002d94:	00000493          	li	s1,0
    80002d98:	0334f463          	bgeu	s1,s3,80002dc0 <_Z10buddy_initPvm+0x15c>
        addBlocks(buddy, (block*)buddy->startAddr + i, 0);
    80002d9c:	00893583          	ld	a1,8(s2)
    80002da0:	00c49793          	slli	a5,s1,0xc
    80002da4:	00000613          	li	a2,0
    80002da8:	00f585b3          	add	a1,a1,a5
    80002dac:	00090513          	mv	a0,s2
    80002db0:	00000097          	auipc	ra,0x0
    80002db4:	d3c080e7          	jalr	-708(ra) # 80002aec <_Z9addBlocksP14buddyAllocatorPvm>
    for(size_t i = 0;i < numOfBlocks;i++)
    80002db8:	00148493          	addi	s1,s1,1
    80002dbc:	fddff06f          	j	80002d98 <_Z10buddy_initPvm+0x134>
}
    80002dc0:	00090513          	mv	a0,s2
    80002dc4:	02813083          	ld	ra,40(sp)
    80002dc8:	02013403          	ld	s0,32(sp)
    80002dcc:	01813483          	ld	s1,24(sp)
    80002dd0:	01013903          	ld	s2,16(sp)
    80002dd4:	00813983          	ld	s3,8(sp)
    80002dd8:	00013a03          	ld	s4,0(sp)
    80002ddc:	03010113          	addi	sp,sp,48
    80002de0:	00008067          	ret

0000000080002de4 <_Z10buddy_freeP14buddyAllocatorPvm>:
{
    80002de4:	fd010113          	addi	sp,sp,-48
    80002de8:	02113423          	sd	ra,40(sp)
    80002dec:	02813023          	sd	s0,32(sp)
    80002df0:	00913c23          	sd	s1,24(sp)
    80002df4:	01213823          	sd	s2,16(sp)
    80002df8:	01313423          	sd	s3,8(sp)
    80002dfc:	03010413          	addi	s0,sp,48
    80002e00:	00050993          	mv	s3,a0
    80002e04:	00058493          	mv	s1,a1
    80002e08:	00060913          	mv	s2,a2
    KConsole::trapPrintString("Buddy free: ");
    80002e0c:	00005517          	auipc	a0,0x5
    80002e10:	3ac50513          	addi	a0,a0,940 # 800081b8 <CONSOLE_STATUS+0x1a8>
    80002e14:	00000097          	auipc	ra,0x0
    80002e18:	6c4080e7          	jalr	1732(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt((size_t)addr,16); KConsole::trapPrintString(" ");
    80002e1c:	00000613          	li	a2,0
    80002e20:	01000593          	li	a1,16
    80002e24:	00048513          	mv	a0,s1
    80002e28:	00000097          	auipc	ra,0x0
    80002e2c:	6f4080e7          	jalr	1780(ra) # 8000351c <_ZN8KConsole12trapPrintIntEmii>
    80002e30:	00005517          	auipc	a0,0x5
    80002e34:	34850513          	addi	a0,a0,840 # 80008178 <CONSOLE_STATUS+0x168>
    80002e38:	00000097          	auipc	ra,0x0
    80002e3c:	6a0080e7          	jalr	1696(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(numOfBlocks); KConsole::trapPrintString("\n");
    80002e40:	00000613          	li	a2,0
    80002e44:	00a00593          	li	a1,10
    80002e48:	00090513          	mv	a0,s2
    80002e4c:	00000097          	auipc	ra,0x0
    80002e50:	6d0080e7          	jalr	1744(ra) # 8000351c <_ZN8KConsole12trapPrintIntEmii>
    80002e54:	00005517          	auipc	a0,0x5
    80002e58:	7ac50513          	addi	a0,a0,1964 # 80008600 <CONSOLE_STATUS+0x5f0>
    80002e5c:	00000097          	auipc	ra,0x0
    80002e60:	67c080e7          	jalr	1660(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
    size_t level = getDeg2Ceil(numOfBlocks);
    80002e64:	00090513          	mv	a0,s2
    80002e68:	00000097          	auipc	ra,0x0
    80002e6c:	998080e7          	jalr	-1640(ra) # 80002800 <_Z11getDeg2Ceilm>
    80002e70:	00050613          	mv	a2,a0
    addBlocks(buddy, addr, level); //adds free blocks
    80002e74:	00048593          	mv	a1,s1
    80002e78:	00098513          	mv	a0,s3
    80002e7c:	00000097          	auipc	ra,0x0
    80002e80:	c70080e7          	jalr	-912(ra) # 80002aec <_Z9addBlocksP14buddyAllocatorPvm>
}
    80002e84:	02813083          	ld	ra,40(sp)
    80002e88:	02013403          	ld	s0,32(sp)
    80002e8c:	01813483          	ld	s1,24(sp)
    80002e90:	01013903          	ld	s2,16(sp)
    80002e94:	00813983          	ld	s3,8(sp)
    80002e98:	03010113          	addi	sp,sp,48
    80002e9c:	00008067          	ret

0000000080002ea0 <_Z14printBuddyInfoP14buddyAllocator>:

void printBuddyInfo(buddyAllocator* buddy)
{
    80002ea0:	fd010113          	addi	sp,sp,-48
    80002ea4:	02113423          	sd	ra,40(sp)
    80002ea8:	02813023          	sd	s0,32(sp)
    80002eac:	00913c23          	sd	s1,24(sp)
    80002eb0:	01213823          	sd	s2,16(sp)
    80002eb4:	01313423          	sd	s3,8(sp)
    80002eb8:	03010413          	addi	s0,sp,48
    80002ebc:	00050993          	mv	s3,a0
    KConsole::trapPrintString("Buddy info-------------------------------------------\n");
    80002ec0:	00005517          	auipc	a0,0x5
    80002ec4:	30850513          	addi	a0,a0,776 # 800081c8 <CONSOLE_STATUS+0x1b8>
    80002ec8:	00000097          	auipc	ra,0x0
    80002ecc:	610080e7          	jalr	1552(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Buddy starting address ");
    80002ed0:	00005517          	auipc	a0,0x5
    80002ed4:	33050513          	addi	a0,a0,816 # 80008200 <CONSOLE_STATUS+0x1f0>
    80002ed8:	00000097          	auipc	ra,0x0
    80002edc:	600080e7          	jalr	1536(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt((size_t)buddy->startAddr, 16);KConsole::trapPrintString("\n");
    80002ee0:	00000613          	li	a2,0
    80002ee4:	01000593          	li	a1,16
    80002ee8:	0089b503          	ld	a0,8(s3)
    80002eec:	00000097          	auipc	ra,0x0
    80002ef0:	630080e7          	jalr	1584(ra) # 8000351c <_ZN8KConsole12trapPrintIntEmii>
    80002ef4:	00005517          	auipc	a0,0x5
    80002ef8:	70c50513          	addi	a0,a0,1804 # 80008600 <CONSOLE_STATUS+0x5f0>
    80002efc:	00000097          	auipc	ra,0x0
    80002f00:	5dc080e7          	jalr	1500(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Buddy number of blocks ");
    80002f04:	00005517          	auipc	a0,0x5
    80002f08:	31450513          	addi	a0,a0,788 # 80008218 <CONSOLE_STATUS+0x208>
    80002f0c:	00000097          	auipc	ra,0x0
    80002f10:	5cc080e7          	jalr	1484(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(buddy->numOfBlocks);KConsole::trapPrintString("\n");
    80002f14:	00000613          	li	a2,0
    80002f18:	00a00593          	li	a1,10
    80002f1c:	0009b503          	ld	a0,0(s3)
    80002f20:	00000097          	auipc	ra,0x0
    80002f24:	5fc080e7          	jalr	1532(ra) # 8000351c <_ZN8KConsole12trapPrintIntEmii>
    80002f28:	00005517          	auipc	a0,0x5
    80002f2c:	6d850513          	addi	a0,a0,1752 # 80008600 <CONSOLE_STATUS+0x5f0>
    80002f30:	00000097          	auipc	ra,0x0
    80002f34:	5a8080e7          	jalr	1448(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintString("Buddy number of free blocks ");
    80002f38:	00005517          	auipc	a0,0x5
    80002f3c:	2f850513          	addi	a0,a0,760 # 80008230 <CONSOLE_STATUS+0x220>
    80002f40:	00000097          	auipc	ra,0x0
    80002f44:	598080e7          	jalr	1432(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
    KConsole::trapPrintInt(buddy->numOfFreeBlocks); KConsole::trapPrintString("\n");
    80002f48:	00000613          	li	a2,0
    80002f4c:	00a00593          	li	a1,10
    80002f50:	0109b503          	ld	a0,16(s3)
    80002f54:	00000097          	auipc	ra,0x0
    80002f58:	5c8080e7          	jalr	1480(ra) # 8000351c <_ZN8KConsole12trapPrintIntEmii>
    80002f5c:	00005517          	auipc	a0,0x5
    80002f60:	6a450513          	addi	a0,a0,1700 # 80008600 <CONSOLE_STATUS+0x5f0>
    80002f64:	00000097          	auipc	ra,0x0
    80002f68:	574080e7          	jalr	1396(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
    for(int i = buddy->maxLevel;i>=0;i--)
    80002f6c:	0189a903          	lw	s2,24(s3)
    80002f70:	0080006f          	j	80002f78 <_Z14printBuddyInfoP14buddyAllocator+0xd8>
    80002f74:	fff9091b          	addiw	s2,s2,-1
    80002f78:	08094463          	bltz	s2,80003000 <_Z14printBuddyInfoP14buddyAllocator+0x160>
    {
        KConsole::trapPrintString("Level ");
    80002f7c:	00005517          	auipc	a0,0x5
    80002f80:	2d450513          	addi	a0,a0,724 # 80008250 <CONSOLE_STATUS+0x240>
    80002f84:	00000097          	auipc	ra,0x0
    80002f88:	554080e7          	jalr	1364(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
        KConsole::trapPrintInt(i);KConsole::trapPrintString("\n");
    80002f8c:	00000613          	li	a2,0
    80002f90:	00a00593          	li	a1,10
    80002f94:	00090513          	mv	a0,s2
    80002f98:	00000097          	auipc	ra,0x0
    80002f9c:	584080e7          	jalr	1412(ra) # 8000351c <_ZN8KConsole12trapPrintIntEmii>
    80002fa0:	00005517          	auipc	a0,0x5
    80002fa4:	66050513          	addi	a0,a0,1632 # 80008600 <CONSOLE_STATUS+0x5f0>
    80002fa8:	00000097          	auipc	ra,0x0
    80002fac:	530080e7          	jalr	1328(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
        KConsole::trapPrintString("Free blocks on this level\n");
    80002fb0:	00005517          	auipc	a0,0x5
    80002fb4:	2a850513          	addi	a0,a0,680 # 80008258 <CONSOLE_STATUS+0x248>
    80002fb8:	00000097          	auipc	ra,0x0
    80002fbc:	520080e7          	jalr	1312(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
        buddyBlock* curr = buddy->bucket[i].first;
    80002fc0:	00290793          	addi	a5,s2,2
    80002fc4:	00479793          	slli	a5,a5,0x4
    80002fc8:	00f987b3          	add	a5,s3,a5
    80002fcc:	0007b483          	ld	s1,0(a5)
        while(curr != 0)
    80002fd0:	fa0482e3          	beqz	s1,80002f74 <_Z14printBuddyInfoP14buddyAllocator+0xd4>
        {
            KConsole::trapPrintInt((size_t)curr, 16);
    80002fd4:	00000613          	li	a2,0
    80002fd8:	01000593          	li	a1,16
    80002fdc:	00048513          	mv	a0,s1
    80002fe0:	00000097          	auipc	ra,0x0
    80002fe4:	53c080e7          	jalr	1340(ra) # 8000351c <_ZN8KConsole12trapPrintIntEmii>
            KConsole::trapPrintString("\n");
    80002fe8:	00005517          	auipc	a0,0x5
    80002fec:	61850513          	addi	a0,a0,1560 # 80008600 <CONSOLE_STATUS+0x5f0>
    80002ff0:	00000097          	auipc	ra,0x0
    80002ff4:	4e8080e7          	jalr	1256(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
            curr = curr->next;
    80002ff8:	0004b483          	ld	s1,0(s1)
        while(curr != 0)
    80002ffc:	fd5ff06f          	j	80002fd0 <_Z14printBuddyInfoP14buddyAllocator+0x130>
        }
    }
    KConsole::trapPrintString("End of buddy info-------------------------------------------\n");
    80003000:	00005517          	auipc	a0,0x5
    80003004:	27850513          	addi	a0,a0,632 # 80008278 <CONSOLE_STATUS+0x268>
    80003008:	00000097          	auipc	ra,0x0
    8000300c:	4d0080e7          	jalr	1232(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
    80003010:	02813083          	ld	ra,40(sp)
    80003014:	02013403          	ld	s0,32(sp)
    80003018:	01813483          	ld	s1,24(sp)
    8000301c:	01013903          	ld	s2,16(sp)
    80003020:	00813983          	ld	s3,8(sp)
    80003024:	03010113          	addi	sp,sp,48
    80003028:	00008067          	ret

000000008000302c <_ZN8KConsole10initializeEv>:
char KConsole::inputBuffer[bufferSize];
char KConsole::outputBuffer[bufferSize];
uint64 KConsole::pendingPutc = 0;

void KConsole::initialize()
{
    8000302c:	fe010113          	addi	sp,sp,-32
    80003030:	00113c23          	sd	ra,24(sp)
    80003034:	00813823          	sd	s0,16(sp)
    80003038:	00913423          	sd	s1,8(sp)
    8000303c:	01213023          	sd	s2,0(sp)
    80003040:	02010413          	addi	s0,sp,32
    hasCharactersInput = new KSemaphore(0);
    80003044:	01800513          	li	a0,24
    80003048:	00002097          	auipc	ra,0x2
    8000304c:	c3c080e7          	jalr	-964(ra) # 80004c84 <_ZN10KSemaphorenwEm>
    80003050:	00050493          	mv	s1,a0
    80003054:	00000593          	li	a1,0
    80003058:	00002097          	auipc	ra,0x2
    8000305c:	9c8080e7          	jalr	-1592(ra) # 80004a20 <_ZN10KSemaphoreC1Ei>
    80003060:	00007797          	auipc	a5,0x7
    80003064:	7697b823          	sd	s1,1904(a5) # 8000a7d0 <_ZN8KConsole18hasCharactersInputE>
    hasCharactersOutput = new KSemaphore(0);
    80003068:	01800513          	li	a0,24
    8000306c:	00002097          	auipc	ra,0x2
    80003070:	c18080e7          	jalr	-1000(ra) # 80004c84 <_ZN10KSemaphorenwEm>
    80003074:	00050493          	mv	s1,a0
    80003078:	00000593          	li	a1,0
    8000307c:	00002097          	auipc	ra,0x2
    80003080:	9a4080e7          	jalr	-1628(ra) # 80004a20 <_ZN10KSemaphoreC1Ei>
    80003084:	00007797          	auipc	a5,0x7
    80003088:	7497ba23          	sd	s1,1876(a5) # 8000a7d8 <_ZN8KConsole19hasCharactersOutputE>
}
    8000308c:	01813083          	ld	ra,24(sp)
    80003090:	01013403          	ld	s0,16(sp)
    80003094:	00813483          	ld	s1,8(sp)
    80003098:	00013903          	ld	s2,0(sp)
    8000309c:	02010113          	addi	sp,sp,32
    800030a0:	00008067          	ret
    800030a4:	00050913          	mv	s2,a0
    hasCharactersInput = new KSemaphore(0);
    800030a8:	00048513          	mv	a0,s1
    800030ac:	00002097          	auipc	ra,0x2
    800030b0:	c78080e7          	jalr	-904(ra) # 80004d24 <_ZN10KSemaphoredlEPv>
    800030b4:	00090513          	mv	a0,s2
    800030b8:	0000d097          	auipc	ra,0xd
    800030bc:	870080e7          	jalr	-1936(ra) # 8000f928 <_Unwind_Resume>
    800030c0:	00050913          	mv	s2,a0
    hasCharactersOutput = new KSemaphore(0);
    800030c4:	00048513          	mv	a0,s1
    800030c8:	00002097          	auipc	ra,0x2
    800030cc:	c5c080e7          	jalr	-932(ra) # 80004d24 <_ZN10KSemaphoredlEPv>
    800030d0:	00090513          	mv	a0,s2
    800030d4:	0000d097          	auipc	ra,0xd
    800030d8:	854080e7          	jalr	-1964(ra) # 8000f928 <_Unwind_Resume>

00000000800030dc <_ZN8KConsole17putCharacterInputEc>:
    }
}

void KConsole::putCharacterInput(char c)
{
    if((inputTail+1)%bufferSize == inputHead)
    800030dc:	00007697          	auipc	a3,0x7
    800030e0:	6f468693          	addi	a3,a3,1780 # 8000a7d0 <_ZN8KConsole18hasCharactersInputE>
    800030e4:	0106b603          	ld	a2,16(a3)
    800030e8:	00160793          	addi	a5,a2,1
    800030ec:	00002737          	lui	a4,0x2
    800030f0:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    800030f4:	00e7f7b3          	and	a5,a5,a4
    800030f8:	0186b703          	ld	a4,24(a3)
    800030fc:	04e78263          	beq	a5,a4,80003140 <_ZN8KConsole17putCharacterInputEc+0x64>
{
    80003100:	ff010113          	addi	sp,sp,-16
    80003104:	00113423          	sd	ra,8(sp)
    80003108:	00813023          	sd	s0,0(sp)
    8000310c:	01010413          	addi	s0,sp,16
        return;
    inputBuffer[inputTail] = c;
    80003110:	00009717          	auipc	a4,0x9
    80003114:	70070713          	addi	a4,a4,1792 # 8000c810 <_ZN8KConsole11inputBufferE>
    80003118:	00c70633          	add	a2,a4,a2
    8000311c:	00a60023          	sb	a0,0(a2)
    inputTail = (inputTail+1)%bufferSize;
    80003120:	00f6b823          	sd	a5,16(a3)
    hasCharactersInput->signal();
    80003124:	0006b503          	ld	a0,0(a3)
    80003128:	00002097          	auipc	ra,0x2
    8000312c:	b14080e7          	jalr	-1260(ra) # 80004c3c <_ZN10KSemaphore6signalEv>
}
    80003130:	00813083          	ld	ra,8(sp)
    80003134:	00013403          	ld	s0,0(sp)
    80003138:	01010113          	addi	sp,sp,16
    8000313c:	00008067          	ret
    80003140:	00008067          	ret

0000000080003144 <_ZN8KConsole24getCharactersFromConsoleEv>:
    uint64 operation = *(uint8*)CONSOLE_STATUS;
    80003144:	00007797          	auipc	a5,0x7
    80003148:	5a47b783          	ld	a5,1444(a5) # 8000a6e8 <_GLOBAL_OFFSET_TABLE_+0x10>
    8000314c:	0007b783          	ld	a5,0(a5)
    80003150:	0007c783          	lbu	a5,0(a5)
    if(operation & KConsole::STATUS_READ_MASK)
    80003154:	0017f793          	andi	a5,a5,1
    80003158:	02078063          	beqz	a5,80003178 <_ZN8KConsole24getCharactersFromConsoleEv+0x34>
        char c = *(uint8*)CONSOLE_TX_DATA;
    8000315c:	00007797          	auipc	a5,0x7
    80003160:	5ac7b783          	ld	a5,1452(a5) # 8000a708 <_GLOBAL_OFFSET_TABLE_+0x30>
    80003164:	0007b783          	ld	a5,0(a5)
    80003168:	0007c503          	lbu	a0,0(a5)
        if(KConsole::pendingGetc > 0)
    8000316c:	00007797          	auipc	a5,0x7
    80003170:	6847b783          	ld	a5,1668(a5) # 8000a7f0 <_ZN8KConsole11pendingGetcE>
    80003174:	00079463          	bnez	a5,8000317c <_ZN8KConsole24getCharactersFromConsoleEv+0x38>
    80003178:	00008067          	ret
{
    8000317c:	ff010113          	addi	sp,sp,-16
    80003180:	00113423          	sd	ra,8(sp)
    80003184:	00813023          	sd	s0,0(sp)
    80003188:	01010413          	addi	s0,sp,16
            KConsole::pendingGetc--;
    8000318c:	fff78793          	addi	a5,a5,-1
    80003190:	00007717          	auipc	a4,0x7
    80003194:	66f73023          	sd	a5,1632(a4) # 8000a7f0 <_ZN8KConsole11pendingGetcE>
            KConsole::putCharacterInput(c);
    80003198:	00000097          	auipc	ra,0x0
    8000319c:	f44080e7          	jalr	-188(ra) # 800030dc <_ZN8KConsole17putCharacterInputEc>
}
    800031a0:	00813083          	ld	ra,8(sp)
    800031a4:	00013403          	ld	s0,0(sp)
    800031a8:	01010113          	addi	sp,sp,16
    800031ac:	00008067          	ret

00000000800031b0 <_ZN8KConsole17getCharacterInputEv>:

char KConsole::getCharacterInput()
{
    800031b0:	fe010113          	addi	sp,sp,-32
    800031b4:	00113c23          	sd	ra,24(sp)
    800031b8:	00813823          	sd	s0,16(sp)
    800031bc:	00913423          	sd	s1,8(sp)
    800031c0:	02010413          	addi	s0,sp,32
    hasCharactersInput->wait();
    800031c4:	00007497          	auipc	s1,0x7
    800031c8:	60c48493          	addi	s1,s1,1548 # 8000a7d0 <_ZN8KConsole18hasCharactersInputE>
    800031cc:	0004b503          	ld	a0,0(s1)
    800031d0:	00002097          	auipc	ra,0x2
    800031d4:	8f4080e7          	jalr	-1804(ra) # 80004ac4 <_ZN10KSemaphore4waitEv>
    if(inputHead == inputTail)
    800031d8:	0184b783          	ld	a5,24(s1)
    800031dc:	0104b703          	ld	a4,16(s1)
    800031e0:	04e78063          	beq	a5,a4,80003220 <_ZN8KConsole17getCharacterInputEv+0x70>
        return -1;
    char c = inputBuffer[inputHead];
    800031e4:	00009717          	auipc	a4,0x9
    800031e8:	62c70713          	addi	a4,a4,1580 # 8000c810 <_ZN8KConsole11inputBufferE>
    800031ec:	00f70733          	add	a4,a4,a5
    800031f0:	00074503          	lbu	a0,0(a4)
    inputHead = (inputHead+1)%bufferSize;
    800031f4:	00178793          	addi	a5,a5,1
    800031f8:	00002737          	lui	a4,0x2
    800031fc:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80003200:	00e7f7b3          	and	a5,a5,a4
    80003204:	00007717          	auipc	a4,0x7
    80003208:	5ef73223          	sd	a5,1508(a4) # 8000a7e8 <_ZN8KConsole9inputHeadE>
    return c;
}
    8000320c:	01813083          	ld	ra,24(sp)
    80003210:	01013403          	ld	s0,16(sp)
    80003214:	00813483          	ld	s1,8(sp)
    80003218:	02010113          	addi	sp,sp,32
    8000321c:	00008067          	ret
        return -1;
    80003220:	0ff00513          	li	a0,255
    80003224:	fe9ff06f          	j	8000320c <_ZN8KConsole17getCharacterInputEv+0x5c>

0000000080003228 <_ZN8KConsole18putCharacterOutputEc>:

void KConsole::putCharacterOutput(char c)
{
    if((outputTail+1)%bufferSize == outputHead)
    80003228:	00007697          	auipc	a3,0x7
    8000322c:	5a868693          	addi	a3,a3,1448 # 8000a7d0 <_ZN8KConsole18hasCharactersInputE>
    80003230:	0286b603          	ld	a2,40(a3)
    80003234:	00160793          	addi	a5,a2,1
    80003238:	00002737          	lui	a4,0x2
    8000323c:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    80003240:	00e7f7b3          	and	a5,a5,a4
    80003244:	0306b703          	ld	a4,48(a3)
    80003248:	04e78a63          	beq	a5,a4,8000329c <_ZN8KConsole18putCharacterOutputEc+0x74>
{
    8000324c:	ff010113          	addi	sp,sp,-16
    80003250:	00113423          	sd	ra,8(sp)
    80003254:	00813023          	sd	s0,0(sp)
    80003258:	01010413          	addi	s0,sp,16
        return;
    pendingPutc++;
    8000325c:	00068713          	mv	a4,a3
    80003260:	0386b683          	ld	a3,56(a3)
    80003264:	00168693          	addi	a3,a3,1
    80003268:	02d73c23          	sd	a3,56(a4)
    outputBuffer[outputTail] = c;
    8000326c:	00007697          	auipc	a3,0x7
    80003270:	5a468693          	addi	a3,a3,1444 # 8000a810 <_ZN8KConsole12outputBufferE>
    80003274:	00c68633          	add	a2,a3,a2
    80003278:	00a60023          	sb	a0,0(a2)
    outputTail = (outputTail+1)%bufferSize;
    8000327c:	02f73423          	sd	a5,40(a4)
    hasCharactersOutput->signal();
    80003280:	00873503          	ld	a0,8(a4)
    80003284:	00002097          	auipc	ra,0x2
    80003288:	9b8080e7          	jalr	-1608(ra) # 80004c3c <_ZN10KSemaphore6signalEv>
}
    8000328c:	00813083          	ld	ra,8(sp)
    80003290:	00013403          	ld	s0,0(sp)
    80003294:	01010113          	addi	sp,sp,16
    80003298:	00008067          	ret
    8000329c:	00008067          	ret

00000000800032a0 <_ZN8KConsole18getCharacterOutputEv>:

char KConsole::getCharacterOutput()
{
    800032a0:	fe010113          	addi	sp,sp,-32
    800032a4:	00113c23          	sd	ra,24(sp)
    800032a8:	00813823          	sd	s0,16(sp)
    800032ac:	00913423          	sd	s1,8(sp)
    800032b0:	02010413          	addi	s0,sp,32
    hasCharactersOutput->wait();
    800032b4:	00007497          	auipc	s1,0x7
    800032b8:	51c48493          	addi	s1,s1,1308 # 8000a7d0 <_ZN8KConsole18hasCharactersInputE>
    800032bc:	0084b503          	ld	a0,8(s1)
    800032c0:	00002097          	auipc	ra,0x2
    800032c4:	804080e7          	jalr	-2044(ra) # 80004ac4 <_ZN10KSemaphore4waitEv>
    if(outputHead == outputTail)
    800032c8:	0304b783          	ld	a5,48(s1)
    800032cc:	0284b703          	ld	a4,40(s1)
    800032d0:	04e78063          	beq	a5,a4,80003310 <_ZN8KConsole18getCharacterOutputEv+0x70>
        return -1;
    char c = outputBuffer[outputHead];
    800032d4:	00007717          	auipc	a4,0x7
    800032d8:	53c70713          	addi	a4,a4,1340 # 8000a810 <_ZN8KConsole12outputBufferE>
    800032dc:	00f70733          	add	a4,a4,a5
    800032e0:	00074503          	lbu	a0,0(a4)
    outputHead = (outputHead+1)%bufferSize;
    800032e4:	00178793          	addi	a5,a5,1
    800032e8:	00002737          	lui	a4,0x2
    800032ec:	fff70713          	addi	a4,a4,-1 # 1fff <_entry-0x7fffe001>
    800032f0:	00e7f7b3          	and	a5,a5,a4
    800032f4:	00007717          	auipc	a4,0x7
    800032f8:	50f73623          	sd	a5,1292(a4) # 8000a800 <_ZN8KConsole10outputHeadE>
    return c;
}
    800032fc:	01813083          	ld	ra,24(sp)
    80003300:	01013403          	ld	s0,16(sp)
    80003304:	00813483          	ld	s1,8(sp)
    80003308:	02010113          	addi	sp,sp,32
    8000330c:	00008067          	ret
        return -1;
    80003310:	0ff00513          	li	a0,255
    80003314:	fe9ff06f          	j	800032fc <_ZN8KConsole18getCharacterOutputEv+0x5c>

0000000080003318 <_ZN8KConsole11putcHandlerEv>:

void KConsole::putcHandler()
{
    80003318:	ff010113          	addi	sp,sp,-16
    8000331c:	00113423          	sd	ra,8(sp)
    80003320:	00813023          	sd	s0,0(sp)
    80003324:	01010413          	addi	s0,sp,16
    uint64 ch;
    __asm__ volatile("mv %0, a1" : "=r"(ch));
    80003328:	00058513          	mv	a0,a1
    putCharacterOutput((char)ch);
    8000332c:	0ff57513          	andi	a0,a0,255
    80003330:	00000097          	auipc	ra,0x0
    80003334:	ef8080e7          	jalr	-264(ra) # 80003228 <_ZN8KConsole18putCharacterOutputEc>
}
    80003338:	00813083          	ld	ra,8(sp)
    8000333c:	00013403          	ld	s0,0(sp)
    80003340:	01010113          	addi	sp,sp,16
    80003344:	00008067          	ret

0000000080003348 <_ZN8KConsole11getcHandlerEv>:

void KConsole::getcHandler()
{
    80003348:	fe010113          	addi	sp,sp,-32
    8000334c:	00113c23          	sd	ra,24(sp)
    80003350:	00813823          	sd	s0,16(sp)
    80003354:	00913423          	sd	s1,8(sp)
    80003358:	02010413          	addi	s0,sp,32
    pendingGetc++;
    8000335c:	00007717          	auipc	a4,0x7
    80003360:	47470713          	addi	a4,a4,1140 # 8000a7d0 <_ZN8KConsole18hasCharactersInputE>
    80003364:	02073783          	ld	a5,32(a4)
    80003368:	00178793          	addi	a5,a5,1
    8000336c:	02f73023          	sd	a5,32(a4)
    char ch;
    ch = getCharacterInput();
    80003370:	00000097          	auipc	ra,0x0
    80003374:	e40080e7          	jalr	-448(ra) # 800031b0 <_ZN8KConsole17getCharacterInputEv>
    80003378:	00050493          	mv	s1,a0
    if(ch!=0x01b)
    8000337c:	01b00793          	li	a5,27
    80003380:	02f51663          	bne	a0,a5,800033ac <_ZN8KConsole11getcHandlerEv+0x64>
        putCharacterOutput(ch);

    if(ch==13)
    80003384:	00d00793          	li	a5,13
    80003388:	02f48863          	beq	s1,a5,800033b8 <_ZN8KConsole11getcHandlerEv+0x70>
    {
        putCharacterOutput(13);
        putCharacterOutput(10);
    }

    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    8000338c:	00048513          	mv	a0,s1
    Riscv::w_a0_sscratch();
    80003390:	00001097          	auipc	ra,0x1
    80003394:	e5c080e7          	jalr	-420(ra) # 800041ec <_ZN5Riscv13w_a0_sscratchEv>
}
    80003398:	01813083          	ld	ra,24(sp)
    8000339c:	01013403          	ld	s0,16(sp)
    800033a0:	00813483          	ld	s1,8(sp)
    800033a4:	02010113          	addi	sp,sp,32
    800033a8:	00008067          	ret
        putCharacterOutput(ch);
    800033ac:	00000097          	auipc	ra,0x0
    800033b0:	e7c080e7          	jalr	-388(ra) # 80003228 <_ZN8KConsole18putCharacterOutputEc>
    800033b4:	fd1ff06f          	j	80003384 <_ZN8KConsole11getcHandlerEv+0x3c>
        putCharacterOutput(13);
    800033b8:	00d00513          	li	a0,13
    800033bc:	00000097          	auipc	ra,0x0
    800033c0:	e6c080e7          	jalr	-404(ra) # 80003228 <_ZN8KConsole18putCharacterOutputEc>
        putCharacterOutput(10);
    800033c4:	00a00513          	li	a0,10
    800033c8:	00000097          	auipc	ra,0x0
    800033cc:	e60080e7          	jalr	-416(ra) # 80003228 <_ZN8KConsole18putCharacterOutputEc>
    800033d0:	fbdff06f          	j	8000338c <_ZN8KConsole11getcHandlerEv+0x44>

00000000800033d4 <_ZN8KConsole17outputBufferEmptyEv>:

bool KConsole::outputBufferEmpty()
{
    800033d4:	ff010113          	addi	sp,sp,-16
    800033d8:	00813423          	sd	s0,8(sp)
    800033dc:	01010413          	addi	s0,sp,16
    return pendingPutc == 0;
}
    800033e0:	00007517          	auipc	a0,0x7
    800033e4:	42853503          	ld	a0,1064(a0) # 8000a808 <_ZN8KConsole11pendingPutcE>
    800033e8:	00153513          	seqz	a0,a0
    800033ec:	00813403          	ld	s0,8(sp)
    800033f0:	01010113          	addi	sp,sp,16
    800033f4:	00008067          	ret

00000000800033f8 <_ZN8KConsole23sendCharactersToConsoleEPv>:
{
    800033f8:	fe010113          	addi	sp,sp,-32
    800033fc:	00113c23          	sd	ra,24(sp)
    80003400:	00813823          	sd	s0,16(sp)
    80003404:	02010413          	addi	s0,sp,32
    80003408:	0180006f          	j	80003420 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>
                thread_exit();
    8000340c:	fffff097          	auipc	ra,0xfffff
    80003410:	b30080e7          	jalr	-1232(ra) # 80001f3c <_Z11thread_exitv>
    80003414:	0340006f          	j	80003448 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
                thread_dispatch();
    80003418:	fffff097          	auipc	ra,0xfffff
    8000341c:	b04080e7          	jalr	-1276(ra) # 80001f1c <_Z15thread_dispatchv>
            if(Riscv::finishSystem && KConsole::outputBufferEmpty() && pendingGetc == 0)
    80003420:	00007797          	auipc	a5,0x7
    80003424:	3187b783          	ld	a5,792(a5) # 8000a738 <_GLOBAL_OFFSET_TABLE_+0x60>
    80003428:	0007c783          	lbu	a5,0(a5)
    8000342c:	00078e63          	beqz	a5,80003448 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    80003430:	00000097          	auipc	ra,0x0
    80003434:	fa4080e7          	jalr	-92(ra) # 800033d4 <_ZN8KConsole17outputBufferEmptyEv>
    80003438:	00050863          	beqz	a0,80003448 <_ZN8KConsole23sendCharactersToConsoleEPv+0x50>
    8000343c:	00007797          	auipc	a5,0x7
    80003440:	3b47b783          	ld	a5,948(a5) # 8000a7f0 <_ZN8KConsole11pendingGetcE>
    80003444:	fc0784e3          	beqz	a5,8000340c <_ZN8KConsole23sendCharactersToConsoleEPv+0x14>
            uint64 operation = *(uint8*)CONSOLE_STATUS;
    80003448:	00007797          	auipc	a5,0x7
    8000344c:	2a07b783          	ld	a5,672(a5) # 8000a6e8 <_GLOBAL_OFFSET_TABLE_+0x10>
    80003450:	0007b783          	ld	a5,0(a5)
    80003454:	0007c783          	lbu	a5,0(a5)
            if ((operation & STATUS_WRITE_MASK) && pendingPutc > 0)
    80003458:	0207f793          	andi	a5,a5,32
    8000345c:	fa078ee3          	beqz	a5,80003418 <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
    80003460:	00007797          	auipc	a5,0x7
    80003464:	3a87b783          	ld	a5,936(a5) # 8000a808 <_ZN8KConsole11pendingPutcE>
    80003468:	fa0788e3          	beqz	a5,80003418 <_ZN8KConsole23sendCharactersToConsoleEPv+0x20>
                char volatile c = sysCallGetCharOutput();
    8000346c:	fffff097          	auipc	ra,0xfffff
    80003470:	cd8080e7          	jalr	-808(ra) # 80002144 <_Z20sysCallGetCharOutputv>
    80003474:	fea407a3          	sb	a0,-17(s0)
                pendingPutc--;
    80003478:	00007717          	auipc	a4,0x7
    8000347c:	35870713          	addi	a4,a4,856 # 8000a7d0 <_ZN8KConsole18hasCharactersInputE>
    80003480:	03873783          	ld	a5,56(a4)
    80003484:	fff78793          	addi	a5,a5,-1
    80003488:	02f73c23          	sd	a5,56(a4)
                *(uint8*)CONSOLE_RX_DATA = c;
    8000348c:	00007797          	auipc	a5,0x7
    80003490:	2547b783          	ld	a5,596(a5) # 8000a6e0 <_GLOBAL_OFFSET_TABLE_+0x8>
    80003494:	0007b783          	ld	a5,0(a5)
    80003498:	fef44703          	lbu	a4,-17(s0)
    8000349c:	00e78023          	sb	a4,0(a5)
    800034a0:	f81ff06f          	j	80003420 <_ZN8KConsole23sendCharactersToConsoleEPv+0x28>

00000000800034a4 <_ZN8KConsole14getCharHandlerEv>:

void KConsole::getCharHandler()
{
    800034a4:	ff010113          	addi	sp,sp,-16
    800034a8:	00113423          	sd	ra,8(sp)
    800034ac:	00813023          	sd	s0,0(sp)
    800034b0:	01010413          	addi	s0,sp,16
    char ch;
    ch = getCharacterOutput();
    800034b4:	00000097          	auipc	ra,0x0
    800034b8:	dec080e7          	jalr	-532(ra) # 800032a0 <_ZN8KConsole18getCharacterOutputEv>
    __asm__ volatile("mv a0, %0" : :"r"((uint64)ch));
    800034bc:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    800034c0:	00001097          	auipc	ra,0x1
    800034c4:	d2c080e7          	jalr	-724(ra) # 800041ec <_ZN5Riscv13w_a0_sscratchEv>
}
    800034c8:	00813083          	ld	ra,8(sp)
    800034cc:	00013403          	ld	s0,0(sp)
    800034d0:	01010113          	addi	sp,sp,16
    800034d4:	00008067          	ret

00000000800034d8 <_ZN8KConsole15trapPrintStringEPKc>:

void KConsole::trapPrintString(const char *string)
{
    800034d8:	fe010113          	addi	sp,sp,-32
    800034dc:	00113c23          	sd	ra,24(sp)
    800034e0:	00813823          	sd	s0,16(sp)
    800034e4:	00913423          	sd	s1,8(sp)
    800034e8:	02010413          	addi	s0,sp,32
    800034ec:	00050493          	mv	s1,a0
    while (*string != '\0')
    800034f0:	0004c503          	lbu	a0,0(s1)
    800034f4:	00050a63          	beqz	a0,80003508 <_ZN8KConsole15trapPrintStringEPKc+0x30>
    {
        KConsole::putCharacterOutput(*string);
    800034f8:	00000097          	auipc	ra,0x0
    800034fc:	d30080e7          	jalr	-720(ra) # 80003228 <_ZN8KConsole18putCharacterOutputEc>
        string++;
    80003500:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80003504:	fedff06f          	j	800034f0 <_ZN8KConsole15trapPrintStringEPKc+0x18>
    }
}
    80003508:	01813083          	ld	ra,24(sp)
    8000350c:	01013403          	ld	s0,16(sp)
    80003510:	00813483          	ld	s1,8(sp)
    80003514:	02010113          	addi	sp,sp,32
    80003518:	00008067          	ret

000000008000351c <_ZN8KConsole12trapPrintIntEmii>:

void KConsole::trapPrintInt(size_t xx, int base, int sgn)
{
    8000351c:	fb010113          	addi	sp,sp,-80
    80003520:	04113423          	sd	ra,72(sp)
    80003524:	04813023          	sd	s0,64(sp)
    80003528:	02913c23          	sd	s1,56(sp)
    8000352c:	05010413          	addi	s0,sp,80
    char digits[] = "0123456789ABCDEF";
    80003530:	00005797          	auipc	a5,0x5
    80003534:	d8878793          	addi	a5,a5,-632 # 800082b8 <CONSOLE_STATUS+0x2a8>
    80003538:	0007b703          	ld	a4,0(a5)
    8000353c:	fce43423          	sd	a4,-56(s0)
    80003540:	0087b703          	ld	a4,8(a5)
    80003544:	fce43823          	sd	a4,-48(s0)
    80003548:	0107c783          	lbu	a5,16(a5)
    8000354c:	fcf40c23          	sb	a5,-40(s0)
        x = -xx;
    } else {
        x = xx;
    }

    i = 0;
    80003550:	00000493          	li	s1,0
    do {
        buf[i++] = digits[x % base];
    80003554:	02b57733          	remu	a4,a0,a1
    80003558:	fe040693          	addi	a3,s0,-32
    8000355c:	00e68733          	add	a4,a3,a4
    80003560:	fe874703          	lbu	a4,-24(a4)
    80003564:	009687b3          	add	a5,a3,s1
    80003568:	0014849b          	addiw	s1,s1,1
    8000356c:	fce78c23          	sb	a4,-40(a5)
    }while((x /= base) != 0);
    80003570:	00050793          	mv	a5,a0
    80003574:	02b55533          	divu	a0,a0,a1
    80003578:	fcb7fee3          	bgeu	a5,a1,80003554 <_ZN8KConsole12trapPrintIntEmii+0x38>
    if(neg)
        buf[i++] = '-';

    while(--i >= 0)
    8000357c:	fff4849b          	addiw	s1,s1,-1
    80003580:	0004ce63          	bltz	s1,8000359c <_ZN8KConsole12trapPrintIntEmii+0x80>
        KConsole::putCharacterOutput(buf[i]);
    80003584:	fe040793          	addi	a5,s0,-32
    80003588:	009787b3          	add	a5,a5,s1
    8000358c:	fd87c503          	lbu	a0,-40(a5)
    80003590:	00000097          	auipc	ra,0x0
    80003594:	c98080e7          	jalr	-872(ra) # 80003228 <_ZN8KConsole18putCharacterOutputEc>
    80003598:	fe5ff06f          	j	8000357c <_ZN8KConsole12trapPrintIntEmii+0x60>
}
    8000359c:	04813083          	ld	ra,72(sp)
    800035a0:	04013403          	ld	s0,64(sp)
    800035a4:	03813483          	ld	s1,56(sp)
    800035a8:	05010113          	addi	sp,sp,80
    800035ac:	00008067          	ret

00000000800035b0 <_ZN12SleepPCBList17insertSleepingPCBEv>:
#include "../h/Riscv.hpp"

PCB* SleepPCBList::sleepingPCBHead = 0;

void SleepPCBList::insertSleepingPCB()
{
    800035b0:	ff010113          	addi	sp,sp,-16
    800035b4:	00813423          	sd	s0,8(sp)
    800035b8:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SLEEPING);
    800035bc:	00007797          	auipc	a5,0x7
    800035c0:	1847b783          	ld	a5,388(a5) # 8000a740 <_GLOBAL_OFFSET_TABLE_+0x68>
    800035c4:	0007b603          	ld	a2,0(a5)
    void setState(State s) {state = s;}
    800035c8:	00500793          	li	a5,5
    800035cc:	04f62023          	sw	a5,64(a2)
    PCB* prev = 0;
    PCB* curr = sleepingPCBHead;
    800035d0:	0000b797          	auipc	a5,0xb
    800035d4:	2407b783          	ld	a5,576(a5) # 8000e810 <_ZN12SleepPCBList15sleepingPCBHeadE>
    PCB* prev = 0;
    800035d8:	00000593          	li	a1,0
    while(curr != 0)
    800035dc:	02078063          	beqz	a5,800035fc <_ZN12SleepPCBList17insertSleepingPCBEv+0x4c>
    uint64 getTimeToSleep() {return timeToSleep;}
    800035e0:	02063683          	ld	a3,32(a2)
    800035e4:	0207b703          	ld	a4,32(a5)
    {
        if(PCB::running->getTimeToSleep() < curr->getTimeToSleep())
    800035e8:	00e6e863          	bltu	a3,a4,800035f8 <_ZN12SleepPCBList17insertSleepingPCBEv+0x48>
        {
            PCB::running->nextPCB = curr;
            break;
        }
        prev = curr;
    800035ec:	00078593          	mv	a1,a5
        curr=curr->nextPCB;
    800035f0:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    800035f4:	fe9ff06f          	j	800035dc <_ZN12SleepPCBList17insertSleepingPCBEv+0x2c>
            PCB::running->nextPCB = curr;
    800035f8:	00f63423          	sd	a5,8(a2)
    }

    if(prev == 0)
    800035fc:	00058a63          	beqz	a1,80003610 <_ZN12SleepPCBList17insertSleepingPCBEv+0x60>
        sleepingPCBHead = PCB::running;
    else
        prev->nextPCB = PCB::running;
    80003600:	00c5b423          	sd	a2,8(a1)
}
    80003604:	00813403          	ld	s0,8(sp)
    80003608:	01010113          	addi	sp,sp,16
    8000360c:	00008067          	ret
        sleepingPCBHead = PCB::running;
    80003610:	0000b797          	auipc	a5,0xb
    80003614:	20c7b023          	sd	a2,512(a5) # 8000e810 <_ZN12SleepPCBList15sleepingPCBHeadE>
    80003618:	fedff06f          	j	80003604 <_ZN12SleepPCBList17insertSleepingPCBEv+0x54>

000000008000361c <_ZN12SleepPCBList13tryToWakePCBsEv>:

void SleepPCBList::tryToWakePCBs()
{
    PCB* curr = sleepingPCBHead;
    8000361c:	0000b517          	auipc	a0,0xb
    80003620:	1f453503          	ld	a0,500(a0) # 8000e810 <_ZN12SleepPCBList15sleepingPCBHeadE>
    if(curr == 0)
    80003624:	06050e63          	beqz	a0,800036a0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
        return;

    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003628:	06050c63          	beqz	a0,800036a0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
    8000362c:	02053783          	ld	a5,32(a0)
    80003630:	00007717          	auipc	a4,0x7
    80003634:	0f073703          	ld	a4,240(a4) # 8000a720 <_GLOBAL_OFFSET_TABLE_+0x48>
    80003638:	00073703          	ld	a4,0(a4)
    8000363c:	06f76263          	bltu	a4,a5,800036a0 <_ZN12SleepPCBList13tryToWakePCBsEv+0x84>
{
    80003640:	fe010113          	addi	sp,sp,-32
    80003644:	00113c23          	sd	ra,24(sp)
    80003648:	00813823          	sd	s0,16(sp)
    8000364c:	00913423          	sd	s1,8(sp)
    80003650:	02010413          	addi	s0,sp,32
    80003654:	0180006f          	j	8000366c <_ZN12SleepPCBList13tryToWakePCBsEv+0x50>
    80003658:	0204b783          	ld	a5,32(s1)
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    8000365c:	00007717          	auipc	a4,0x7
    80003660:	0c473703          	ld	a4,196(a4) # 8000a720 <_GLOBAL_OFFSET_TABLE_+0x48>
    80003664:	00073703          	ld	a4,0(a4)
    80003668:	02f76263          	bltu	a4,a5,8000368c <_ZN12SleepPCBList13tryToWakePCBsEv+0x70>
    {
        PCB *old = curr;
        curr = curr->nextPCB;
    8000366c:	00853483          	ld	s1,8(a0)
        old->nextPCB = 0;
    80003670:	00053423          	sd	zero,8(a0)
        Scheduler::put(old);
    80003674:	00000097          	auipc	ra,0x0
    80003678:	0b8080e7          	jalr	184(ra) # 8000372c <_ZN9Scheduler3putEP3PCB>
        sleepingPCBHead = curr;
    8000367c:	0000b797          	auipc	a5,0xb
    80003680:	1897ba23          	sd	s1,404(a5) # 8000e810 <_ZN12SleepPCBList15sleepingPCBHeadE>
        curr = curr->nextPCB;
    80003684:	00048513          	mv	a0,s1
    while(curr != 0 && Riscv::totalTime >= curr->getTimeToSleep())
    80003688:	fc0498e3          	bnez	s1,80003658 <_ZN12SleepPCBList13tryToWakePCBsEv+0x3c>
    }
}
    8000368c:	01813083          	ld	ra,24(sp)
    80003690:	01013403          	ld	s0,16(sp)
    80003694:	00813483          	ld	s1,8(sp)
    80003698:	02010113          	addi	sp,sp,32
    8000369c:	00008067          	ret
    800036a0:	00008067          	ret

00000000800036a4 <_ZN9SchedulernwEm>:

PCB* Scheduler::schedulerPCBHead = 0;
PCB* Scheduler::schedulerPCBTail = 0;

void *Scheduler::operator new(size_t size)
{
    800036a4:	ff010113          	addi	sp,sp,-16
    800036a8:	00113423          	sd	ra,8(sp)
    800036ac:	00813023          	sd	s0,0(sp)
    800036b0:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    800036b4:	00001097          	auipc	ra,0x1
    800036b8:	2a8080e7          	jalr	680(ra) # 8000495c <_ZN15MemoryAllocator7kmallocEm>
}
    800036bc:	00813083          	ld	ra,8(sp)
    800036c0:	00013403          	ld	s0,0(sp)
    800036c4:	01010113          	addi	sp,sp,16
    800036c8:	00008067          	ret

00000000800036cc <_ZN9SchedulerdlEPv>:

void Scheduler::operator delete(void *p)
{
    800036cc:	ff010113          	addi	sp,sp,-16
    800036d0:	00113423          	sd	ra,8(sp)
    800036d4:	00813023          	sd	s0,0(sp)
    800036d8:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    800036dc:	00001097          	auipc	ra,0x1
    800036e0:	2e4080e7          	jalr	740(ra) # 800049c0 <_ZN15MemoryAllocator5kfreeEPv>
}
    800036e4:	00813083          	ld	ra,8(sp)
    800036e8:	00013403          	ld	s0,0(sp)
    800036ec:	01010113          	addi	sp,sp,16
    800036f0:	00008067          	ret

00000000800036f4 <_ZN9Scheduler7getSizeEv>:

int Scheduler::getSize()
{
    800036f4:	ff010113          	addi	sp,sp,-16
    800036f8:	00813423          	sd	s0,8(sp)
    800036fc:	01010413          	addi	s0,sp,16
    uint64 sz = 0;
    PCB* curr = schedulerPCBHead;
    80003700:	0000b797          	auipc	a5,0xb
    80003704:	1187b783          	ld	a5,280(a5) # 8000e818 <_ZN9Scheduler16schedulerPCBHeadE>
    uint64 sz = 0;
    80003708:	00000513          	li	a0,0
    while(curr != 0)
    8000370c:	00078863          	beqz	a5,8000371c <_ZN9Scheduler7getSizeEv+0x28>
    {
        sz++;
    80003710:	00150513          	addi	a0,a0,1
        curr = curr->nextPCB;
    80003714:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80003718:	ff5ff06f          	j	8000370c <_ZN9Scheduler7getSizeEv+0x18>
    }
    return sz;
}
    8000371c:	0005051b          	sext.w	a0,a0
    80003720:	00813403          	ld	s0,8(sp)
    80003724:	01010113          	addi	sp,sp,16
    80003728:	00008067          	ret

000000008000372c <_ZN9Scheduler3putEP3PCB>:

void Scheduler::put(PCB *pcb)
{
    8000372c:	ff010113          	addi	sp,sp,-16
    80003730:	00813423          	sd	s0,8(sp)
    80003734:	01010413          	addi	s0,sp,16
    void setState(State s) {state = s;}
    80003738:	04052023          	sw	zero,64(a0)
    pcb->setState(PCB::READY);
    pcb->nextPCB = 0;
    8000373c:	00053423          	sd	zero,8(a0)
    if(schedulerPCBHead == 0)
    80003740:	0000b797          	auipc	a5,0xb
    80003744:	0d87b783          	ld	a5,216(a5) # 8000e818 <_ZN9Scheduler16schedulerPCBHeadE>
    80003748:	02078263          	beqz	a5,8000376c <_ZN9Scheduler3putEP3PCB+0x40>
        schedulerPCBHead = schedulerPCBTail = pcb;
    else
    {
        schedulerPCBTail->nextPCB = pcb;
    8000374c:	0000b797          	auipc	a5,0xb
    80003750:	0cc78793          	addi	a5,a5,204 # 8000e818 <_ZN9Scheduler16schedulerPCBHeadE>
    80003754:	0087b703          	ld	a4,8(a5)
    80003758:	00a73423          	sd	a0,8(a4)
        schedulerPCBTail = pcb;
    8000375c:	00a7b423          	sd	a0,8(a5)
    }
}
    80003760:	00813403          	ld	s0,8(sp)
    80003764:	01010113          	addi	sp,sp,16
    80003768:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = pcb;
    8000376c:	0000b797          	auipc	a5,0xb
    80003770:	0ac78793          	addi	a5,a5,172 # 8000e818 <_ZN9Scheduler16schedulerPCBHeadE>
    80003774:	00a7b423          	sd	a0,8(a5)
    80003778:	00a7b023          	sd	a0,0(a5)
    8000377c:	fe5ff06f          	j	80003760 <_ZN9Scheduler3putEP3PCB+0x34>

0000000080003780 <_ZN9Scheduler3getEv>:

PCB *Scheduler::get()
{
    80003780:	ff010113          	addi	sp,sp,-16
    80003784:	00813423          	sd	s0,8(sp)
    80003788:	01010413          	addi	s0,sp,16
    if(schedulerPCBHead == 0)
    8000378c:	0000b517          	auipc	a0,0xb
    80003790:	08c53503          	ld	a0,140(a0) # 8000e818 <_ZN9Scheduler16schedulerPCBHeadE>
    80003794:	00050c63          	beqz	a0,800037ac <_ZN9Scheduler3getEv+0x2c>
        return 0;
    PCB* retval = schedulerPCBHead;
    if(schedulerPCBHead->nextPCB == 0)
    80003798:	00853783          	ld	a5,8(a0)
    8000379c:	00078e63          	beqz	a5,800037b8 <_ZN9Scheduler3getEv+0x38>
        schedulerPCBHead = schedulerPCBTail = 0;
    else
        schedulerPCBHead = schedulerPCBHead->nextPCB;
    800037a0:	0000b717          	auipc	a4,0xb
    800037a4:	06f73c23          	sd	a5,120(a4) # 8000e818 <_ZN9Scheduler16schedulerPCBHeadE>
    retval->nextPCB = 0;
    800037a8:	00053423          	sd	zero,8(a0)
    return retval;
}
    800037ac:	00813403          	ld	s0,8(sp)
    800037b0:	01010113          	addi	sp,sp,16
    800037b4:	00008067          	ret
        schedulerPCBHead = schedulerPCBTail = 0;
    800037b8:	0000b797          	auipc	a5,0xb
    800037bc:	06078793          	addi	a5,a5,96 # 8000e818 <_ZN9Scheduler16schedulerPCBHeadE>
    800037c0:	0007b423          	sd	zero,8(a5)
    800037c4:	0007b023          	sd	zero,0(a5)
    800037c8:	fe1ff06f          	j	800037a8 <_ZN9Scheduler3getEv+0x28>

00000000800037cc <_ZN9Scheduler5printEv>:

void Scheduler::print()
{
    800037cc:	fe010113          	addi	sp,sp,-32
    800037d0:	00113c23          	sd	ra,24(sp)
    800037d4:	00813823          	sd	s0,16(sp)
    800037d8:	00913423          	sd	s1,8(sp)
    800037dc:	02010413          	addi	s0,sp,32
    //trapPrintString("Scheduler print\n");
    PCB* curr = schedulerPCBHead;
    800037e0:	0000b497          	auipc	s1,0xb
    800037e4:	0384b483          	ld	s1,56(s1) # 8000e818 <_ZN9Scheduler16schedulerPCBHeadE>
    while(curr != 0)
    800037e8:	02048863          	beqz	s1,80003818 <_ZN9Scheduler5printEv+0x4c>
    {
        KConsole::trapPrintInt((uint64)curr, 16);
    800037ec:	00000613          	li	a2,0
    800037f0:	01000593          	li	a1,16
    800037f4:	00048513          	mv	a0,s1
    800037f8:	00000097          	auipc	ra,0x0
    800037fc:	d24080e7          	jalr	-732(ra) # 8000351c <_ZN8KConsole12trapPrintIntEmii>
        KConsole::trapPrintString("\n");
    80003800:	00005517          	auipc	a0,0x5
    80003804:	e0050513          	addi	a0,a0,-512 # 80008600 <CONSOLE_STATUS+0x5f0>
    80003808:	00000097          	auipc	ra,0x0
    8000380c:	cd0080e7          	jalr	-816(ra) # 800034d8 <_ZN8KConsole15trapPrintStringEPKc>
        curr = curr->nextPCB;
    80003810:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    80003814:	fd5ff06f          	j	800037e8 <_ZN9Scheduler5printEv+0x1c>
    }
}
    80003818:	01813083          	ld	ra,24(sp)
    8000381c:	01013403          	ld	s0,16(sp)
    80003820:	00813483          	ld	s1,8(sp)
    80003824:	02010113          	addi	sp,sp,32
    80003828:	00008067          	ret

000000008000382c <main>:
#include "../h/Riscv.hpp"

void main()
{
    8000382c:	ff010113          	addi	sp,sp,-16
    80003830:	00113423          	sd	ra,8(sp)
    80003834:	00813023          	sd	s0,0(sp)
    80003838:	01010413          	addi	s0,sp,16
    Riscv::kernelMain();
    8000383c:	00001097          	auipc	ra,0x1
    80003840:	914080e7          	jalr	-1772(ra) # 80004150 <_ZN5Riscv10kernelMainEv>
    80003844:	00813083          	ld	ra,8(sp)
    80003848:	00013403          	ld	s0,0(sp)
    8000384c:	01010113          	addi	sp,sp,16
    80003850:	00008067          	ret

0000000080003854 <_Z14buddyInitTest1v>:
#include "../h/buddyTests.hpp"

void buddyInitTest1()
{
    80003854:	ff010113          	addi	sp,sp,-16
    80003858:	00113423          	sd	ra,8(sp)
    8000385c:	00813023          	sd	s0,0(sp)
    80003860:	01010413          	addi	s0,sp,16
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 18);
    80003864:	01200593          	li	a1,18
    80003868:	00007797          	auipc	a5,0x7
    8000386c:	e887b783          	ld	a5,-376(a5) # 8000a6f0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003870:	0007b503          	ld	a0,0(a5)
    80003874:	fffff097          	auipc	ra,0xfffff
    80003878:	3f0080e7          	jalr	1008(ra) # 80002c64 <_Z10buddy_initPvm>
    printBuddyInfo(buddy);
    8000387c:	fffff097          	auipc	ra,0xfffff
    80003880:	624080e7          	jalr	1572(ra) # 80002ea0 <_Z14printBuddyInfoP14buddyAllocator>
}
    80003884:	00813083          	ld	ra,8(sp)
    80003888:	00013403          	ld	s0,0(sp)
    8000388c:	01010113          	addi	sp,sp,16
    80003890:	00008067          	ret

0000000080003894 <_Z20buddyOnlyAllocsTest1v>:

void buddyOnlyAllocsTest1()
{
    80003894:	fe010113          	addi	sp,sp,-32
    80003898:	00113c23          	sd	ra,24(sp)
    8000389c:	00813823          	sd	s0,16(sp)
    800038a0:	00913423          	sd	s1,8(sp)
    800038a4:	02010413          	addi	s0,sp,32
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 10);
    800038a8:	00a00593          	li	a1,10
    800038ac:	00007797          	auipc	a5,0x7
    800038b0:	e447b783          	ld	a5,-444(a5) # 8000a6f0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800038b4:	0007b503          	ld	a0,0(a5)
    800038b8:	fffff097          	auipc	ra,0xfffff
    800038bc:	3ac080e7          	jalr	940(ra) # 80002c64 <_Z10buddy_initPvm>
    800038c0:	00050493          	mv	s1,a0
    printBuddyInfo(buddy);
    800038c4:	fffff097          	auipc	ra,0xfffff
    800038c8:	5dc080e7          	jalr	1500(ra) # 80002ea0 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,1);
    800038cc:	00100593          	li	a1,1
    800038d0:	00048513          	mv	a0,s1
    800038d4:	fffff097          	auipc	ra,0xfffff
    800038d8:	0a8080e7          	jalr	168(ra) # 8000297c <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    800038dc:	00048513          	mv	a0,s1
    800038e0:	fffff097          	auipc	ra,0xfffff
    800038e4:	5c0080e7          	jalr	1472(ra) # 80002ea0 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,1);
    800038e8:	00100593          	li	a1,1
    800038ec:	00048513          	mv	a0,s1
    800038f0:	fffff097          	auipc	ra,0xfffff
    800038f4:	08c080e7          	jalr	140(ra) # 8000297c <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    800038f8:	00048513          	mv	a0,s1
    800038fc:	fffff097          	auipc	ra,0xfffff
    80003900:	5a4080e7          	jalr	1444(ra) # 80002ea0 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,1);
    80003904:	00100593          	li	a1,1
    80003908:	00048513          	mv	a0,s1
    8000390c:	fffff097          	auipc	ra,0xfffff
    80003910:	070080e7          	jalr	112(ra) # 8000297c <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    80003914:	00048513          	mv	a0,s1
    80003918:	fffff097          	auipc	ra,0xfffff
    8000391c:	588080e7          	jalr	1416(ra) # 80002ea0 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_alloc(buddy,3);
    80003920:	00300593          	li	a1,3
    80003924:	00048513          	mv	a0,s1
    80003928:	fffff097          	auipc	ra,0xfffff
    8000392c:	054080e7          	jalr	84(ra) # 8000297c <_Z11buddy_allocP14buddyAllocatorm>
    printBuddyInfo(buddy);
    80003930:	00048513          	mv	a0,s1
    80003934:	fffff097          	auipc	ra,0xfffff
    80003938:	56c080e7          	jalr	1388(ra) # 80002ea0 <_Z14printBuddyInfoP14buddyAllocator>
}
    8000393c:	01813083          	ld	ra,24(sp)
    80003940:	01013403          	ld	s0,16(sp)
    80003944:	00813483          	ld	s1,8(sp)
    80003948:	02010113          	addi	sp,sp,32
    8000394c:	00008067          	ret

0000000080003950 <_Z20buddyOnlyAllocsTest2v>:

void buddyOnlyAllocsTest2()
{
    80003950:	fe010113          	addi	sp,sp,-32
    80003954:	00113c23          	sd	ra,24(sp)
    80003958:	00813823          	sd	s0,16(sp)
    8000395c:	00913423          	sd	s1,8(sp)
    80003960:	02010413          	addi	s0,sp,32
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 10);
    80003964:	00a00593          	li	a1,10
    80003968:	00007797          	auipc	a5,0x7
    8000396c:	d887b783          	ld	a5,-632(a5) # 8000a6f0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80003970:	0007b503          	ld	a0,0(a5)
    80003974:	fffff097          	auipc	ra,0xfffff
    80003978:	2f0080e7          	jalr	752(ra) # 80002c64 <_Z10buddy_initPvm>
    8000397c:	00050493          	mv	s1,a0
    void* adr = buddy_alloc(buddy, 100);
    80003980:	06400593          	li	a1,100
    80003984:	fffff097          	auipc	ra,0xfffff
    80003988:	ff8080e7          	jalr	-8(ra) # 8000297c <_Z11buddy_allocP14buddyAllocatorm>
    if(adr == nullptr)
    8000398c:	00050c63          	beqz	a0,800039a4 <_Z20buddyOnlyAllocsTest2v+0x54>
    {
        printBuddyInfo(buddy);
    }
}
    80003990:	01813083          	ld	ra,24(sp)
    80003994:	01013403          	ld	s0,16(sp)
    80003998:	00813483          	ld	s1,8(sp)
    8000399c:	02010113          	addi	sp,sp,32
    800039a0:	00008067          	ret
        printBuddyInfo(buddy);
    800039a4:	00048513          	mv	a0,s1
    800039a8:	fffff097          	auipc	ra,0xfffff
    800039ac:	4f8080e7          	jalr	1272(ra) # 80002ea0 <_Z14printBuddyInfoP14buddyAllocator>
}
    800039b0:	fe1ff06f          	j	80003990 <_Z20buddyOnlyAllocsTest2v+0x40>

00000000800039b4 <_Z19buddyAllocFreeTest1v>:

void buddyAllocFreeTest1()
{
    800039b4:	fd010113          	addi	sp,sp,-48
    800039b8:	02113423          	sd	ra,40(sp)
    800039bc:	02813023          	sd	s0,32(sp)
    800039c0:	00913c23          	sd	s1,24(sp)
    800039c4:	01213823          	sd	s2,16(sp)
    800039c8:	01313423          	sd	s3,8(sp)
    800039cc:	03010413          	addi	s0,sp,48
    buddyAllocator* buddy = buddy_init((void*)HEAP_START_ADDR, 10);
    800039d0:	00a00593          	li	a1,10
    800039d4:	00007797          	auipc	a5,0x7
    800039d8:	d1c7b783          	ld	a5,-740(a5) # 8000a6f0 <_GLOBAL_OFFSET_TABLE_+0x18>
    800039dc:	0007b503          	ld	a0,0(a5)
    800039e0:	fffff097          	auipc	ra,0xfffff
    800039e4:	284080e7          	jalr	644(ra) # 80002c64 <_Z10buddy_initPvm>
    800039e8:	00050493          	mv	s1,a0
    printBuddyInfo(buddy);
    800039ec:	fffff097          	auipc	ra,0xfffff
    800039f0:	4b4080e7          	jalr	1204(ra) # 80002ea0 <_Z14printBuddyInfoP14buddyAllocator>
    void* adr = buddy_alloc(buddy,1);
    800039f4:	00100593          	li	a1,1
    800039f8:	00048513          	mv	a0,s1
    800039fc:	fffff097          	auipc	ra,0xfffff
    80003a00:	f80080e7          	jalr	-128(ra) # 8000297c <_Z11buddy_allocP14buddyAllocatorm>
    80003a04:	00050913          	mv	s2,a0
    printBuddyInfo(buddy);
    80003a08:	00048513          	mv	a0,s1
    80003a0c:	fffff097          	auipc	ra,0xfffff
    80003a10:	494080e7          	jalr	1172(ra) # 80002ea0 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_free(buddy, adr, 1);
    80003a14:	00100613          	li	a2,1
    80003a18:	00090593          	mv	a1,s2
    80003a1c:	00048513          	mv	a0,s1
    80003a20:	fffff097          	auipc	ra,0xfffff
    80003a24:	3c4080e7          	jalr	964(ra) # 80002de4 <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003a28:	00048513          	mv	a0,s1
    80003a2c:	fffff097          	auipc	ra,0xfffff
    80003a30:	474080e7          	jalr	1140(ra) # 80002ea0 <_Z14printBuddyInfoP14buddyAllocator>

    adr = buddy_alloc(buddy, 2);
    80003a34:	00200593          	li	a1,2
    80003a38:	00048513          	mv	a0,s1
    80003a3c:	fffff097          	auipc	ra,0xfffff
    80003a40:	f40080e7          	jalr	-192(ra) # 8000297c <_Z11buddy_allocP14buddyAllocatorm>
    80003a44:	00050913          	mv	s2,a0
    void* adr2 = buddy_alloc(buddy, 3);
    80003a48:	00300593          	li	a1,3
    80003a4c:	00048513          	mv	a0,s1
    80003a50:	fffff097          	auipc	ra,0xfffff
    80003a54:	f2c080e7          	jalr	-212(ra) # 8000297c <_Z11buddy_allocP14buddyAllocatorm>
    80003a58:	00050993          	mv	s3,a0
    printBuddyInfo(buddy);
    80003a5c:	00048513          	mv	a0,s1
    80003a60:	fffff097          	auipc	ra,0xfffff
    80003a64:	440080e7          	jalr	1088(ra) # 80002ea0 <_Z14printBuddyInfoP14buddyAllocator>

    buddy_free(buddy, adr, 2);
    80003a68:	00200613          	li	a2,2
    80003a6c:	00090593          	mv	a1,s2
    80003a70:	00048513          	mv	a0,s1
    80003a74:	fffff097          	auipc	ra,0xfffff
    80003a78:	370080e7          	jalr	880(ra) # 80002de4 <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003a7c:	00048513          	mv	a0,s1
    80003a80:	fffff097          	auipc	ra,0xfffff
    80003a84:	420080e7          	jalr	1056(ra) # 80002ea0 <_Z14printBuddyInfoP14buddyAllocator>
    adr = buddy_alloc(buddy, 1);
    80003a88:	00100593          	li	a1,1
    80003a8c:	00048513          	mv	a0,s1
    80003a90:	fffff097          	auipc	ra,0xfffff
    80003a94:	eec080e7          	jalr	-276(ra) # 8000297c <_Z11buddy_allocP14buddyAllocatorm>
    80003a98:	00050913          	mv	s2,a0
    printBuddyInfo(buddy);
    80003a9c:	00048513          	mv	a0,s1
    80003aa0:	fffff097          	auipc	ra,0xfffff
    80003aa4:	400080e7          	jalr	1024(ra) # 80002ea0 <_Z14printBuddyInfoP14buddyAllocator>

    buddy_free(buddy, adr2, 3);
    80003aa8:	00300613          	li	a2,3
    80003aac:	00098593          	mv	a1,s3
    80003ab0:	00048513          	mv	a0,s1
    80003ab4:	fffff097          	auipc	ra,0xfffff
    80003ab8:	330080e7          	jalr	816(ra) # 80002de4 <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003abc:	00048513          	mv	a0,s1
    80003ac0:	fffff097          	auipc	ra,0xfffff
    80003ac4:	3e0080e7          	jalr	992(ra) # 80002ea0 <_Z14printBuddyInfoP14buddyAllocator>
    buddy_free(buddy, adr, 1);
    80003ac8:	00100613          	li	a2,1
    80003acc:	00090593          	mv	a1,s2
    80003ad0:	00048513          	mv	a0,s1
    80003ad4:	fffff097          	auipc	ra,0xfffff
    80003ad8:	310080e7          	jalr	784(ra) # 80002de4 <_Z10buddy_freeP14buddyAllocatorPvm>
    printBuddyInfo(buddy);
    80003adc:	00048513          	mv	a0,s1
    80003ae0:	fffff097          	auipc	ra,0xfffff
    80003ae4:	3c0080e7          	jalr	960(ra) # 80002ea0 <_Z14printBuddyInfoP14buddyAllocator>
    80003ae8:	02813083          	ld	ra,40(sp)
    80003aec:	02013403          	ld	s0,32(sp)
    80003af0:	01813483          	ld	s1,24(sp)
    80003af4:	01013903          	ld	s2,16(sp)
    80003af8:	00813983          	ld	s3,8(sp)
    80003afc:	03010113          	addi	sp,sp,48
    80003b00:	00008067          	ret

0000000080003b04 <_ZN6Thread6runnerEPv>:
    myHandle = 0;
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
}

void Thread::runner(void *t)
{
    80003b04:	ff010113          	addi	sp,sp,-16
    80003b08:	00113423          	sd	ra,8(sp)
    80003b0c:	00813023          	sd	s0,0(sp)
    80003b10:	01010413          	addi	s0,sp,16
    Thread* thr = (Thread*)t;
    thr->run();
    80003b14:	00053783          	ld	a5,0(a0)
    80003b18:	0107b783          	ld	a5,16(a5)
    80003b1c:	000780e7          	jalr	a5
}
    80003b20:	00813083          	ld	ra,8(sp)
    80003b24:	00013403          	ld	s0,0(sp)
    80003b28:	01010113          	addi	sp,sp,16
    80003b2c:	00008067          	ret

0000000080003b30 <_ZN6ThreadD1Ev>:

Thread::~Thread()
    80003b30:	00007797          	auipc	a5,0x7
    80003b34:	b5878793          	addi	a5,a5,-1192 # 8000a688 <_ZTV6Thread+0x10>
    80003b38:	00f53023          	sd	a5,0(a0)
{
    delete myHandle;
    80003b3c:	00853503          	ld	a0,8(a0)
    80003b40:	02050663          	beqz	a0,80003b6c <_ZN6ThreadD1Ev+0x3c>
Thread::~Thread()
    80003b44:	ff010113          	addi	sp,sp,-16
    80003b48:	00113423          	sd	ra,8(sp)
    80003b4c:	00813023          	sd	s0,0(sp)
    80003b50:	01010413          	addi	s0,sp,16
    delete myHandle;
    80003b54:	ffffe097          	auipc	ra,0xffffe
    80003b58:	644080e7          	jalr	1604(ra) # 80002198 <_ZN7_threaddlEPv>
}
    80003b5c:	00813083          	ld	ra,8(sp)
    80003b60:	00013403          	ld	s0,0(sp)
    80003b64:	01010113          	addi	sp,sp,16
    80003b68:	00008067          	ret
    80003b6c:	00008067          	ret

0000000080003b70 <_ZN9SemaphoreD1Ev>:
    if(myHandle == 0)
        return -1;
    return sem_signal(myHandle);
}

Semaphore::~Semaphore() {
    80003b70:	00007797          	auipc	a5,0x7
    80003b74:	b4078793          	addi	a5,a5,-1216 # 8000a6b0 <_ZTV9Semaphore+0x10>
    80003b78:	00f53023          	sd	a5,0(a0)
    delete myHandle;
    80003b7c:	00853503          	ld	a0,8(a0)
    80003b80:	02050663          	beqz	a0,80003bac <_ZN9SemaphoreD1Ev+0x3c>
Semaphore::~Semaphore() {
    80003b84:	ff010113          	addi	sp,sp,-16
    80003b88:	00113423          	sd	ra,8(sp)
    80003b8c:	00813023          	sd	s0,0(sp)
    80003b90:	01010413          	addi	s0,sp,16
    delete myHandle;
    80003b94:	00000097          	auipc	ra,0x0
    80003b98:	464080e7          	jalr	1124(ra) # 80003ff8 <_ZN4_semdlEPv>
}
    80003b9c:	00813083          	ld	ra,8(sp)
    80003ba0:	00013403          	ld	s0,0(sp)
    80003ba4:	01010113          	addi	sp,sp,16
    80003ba8:	00008067          	ret
    80003bac:	00008067          	ret

0000000080003bb0 <_Znwm>:
{
    80003bb0:	ff010113          	addi	sp,sp,-16
    80003bb4:	00113423          	sd	ra,8(sp)
    80003bb8:	00813023          	sd	s0,0(sp)
    80003bbc:	01010413          	addi	s0,sp,16
    return mem_alloc(size);
    80003bc0:	ffffe097          	auipc	ra,0xffffe
    80003bc4:	280080e7          	jalr	640(ra) # 80001e40 <_Z9mem_allocm>
}
    80003bc8:	00813083          	ld	ra,8(sp)
    80003bcc:	00013403          	ld	s0,0(sp)
    80003bd0:	01010113          	addi	sp,sp,16
    80003bd4:	00008067          	ret

0000000080003bd8 <_ZdlPv>:
{
    80003bd8:	ff010113          	addi	sp,sp,-16
    80003bdc:	00113423          	sd	ra,8(sp)
    80003be0:	00813023          	sd	s0,0(sp)
    80003be4:	01010413          	addi	s0,sp,16
    mem_free(p);
    80003be8:	ffffe097          	auipc	ra,0xffffe
    80003bec:	288080e7          	jalr	648(ra) # 80001e70 <_Z8mem_freePv>
}
    80003bf0:	00813083          	ld	ra,8(sp)
    80003bf4:	00013403          	ld	s0,0(sp)
    80003bf8:	01010113          	addi	sp,sp,16
    80003bfc:	00008067          	ret

0000000080003c00 <_ZN6ThreadD0Ev>:
Thread::~Thread()
    80003c00:	fe010113          	addi	sp,sp,-32
    80003c04:	00113c23          	sd	ra,24(sp)
    80003c08:	00813823          	sd	s0,16(sp)
    80003c0c:	00913423          	sd	s1,8(sp)
    80003c10:	02010413          	addi	s0,sp,32
    80003c14:	00050493          	mv	s1,a0
}
    80003c18:	00000097          	auipc	ra,0x0
    80003c1c:	f18080e7          	jalr	-232(ra) # 80003b30 <_ZN6ThreadD1Ev>
    80003c20:	00048513          	mv	a0,s1
    80003c24:	00000097          	auipc	ra,0x0
    80003c28:	fb4080e7          	jalr	-76(ra) # 80003bd8 <_ZdlPv>
    80003c2c:	01813083          	ld	ra,24(sp)
    80003c30:	01013403          	ld	s0,16(sp)
    80003c34:	00813483          	ld	s1,8(sp)
    80003c38:	02010113          	addi	sp,sp,32
    80003c3c:	00008067          	ret

0000000080003c40 <_ZN9SemaphoreD0Ev>:
Semaphore::~Semaphore() {
    80003c40:	fe010113          	addi	sp,sp,-32
    80003c44:	00113c23          	sd	ra,24(sp)
    80003c48:	00813823          	sd	s0,16(sp)
    80003c4c:	00913423          	sd	s1,8(sp)
    80003c50:	02010413          	addi	s0,sp,32
    80003c54:	00050493          	mv	s1,a0
}
    80003c58:	00000097          	auipc	ra,0x0
    80003c5c:	f18080e7          	jalr	-232(ra) # 80003b70 <_ZN9SemaphoreD1Ev>
    80003c60:	00048513          	mv	a0,s1
    80003c64:	00000097          	auipc	ra,0x0
    80003c68:	f74080e7          	jalr	-140(ra) # 80003bd8 <_ZdlPv>
    80003c6c:	01813083          	ld	ra,24(sp)
    80003c70:	01013403          	ld	s0,16(sp)
    80003c74:	00813483          	ld	s1,8(sp)
    80003c78:	02010113          	addi	sp,sp,32
    80003c7c:	00008067          	ret

0000000080003c80 <_ZN6Thread5startEv>:
    if(myHandle != 0)
    80003c80:	00853503          	ld	a0,8(a0)
    80003c84:	02050663          	beqz	a0,80003cb0 <_ZN6Thread5startEv+0x30>
{
    80003c88:	ff010113          	addi	sp,sp,-16
    80003c8c:	00113423          	sd	ra,8(sp)
    80003c90:	00813023          	sd	s0,0(sp)
    80003c94:	01010413          	addi	s0,sp,16
        return thread_start(myHandle);
    80003c98:	ffffe097          	auipc	ra,0xffffe
    80003c9c:	3b4080e7          	jalr	948(ra) # 8000204c <_Z12thread_startPv>
}
    80003ca0:	00813083          	ld	ra,8(sp)
    80003ca4:	00013403          	ld	s0,0(sp)
    80003ca8:	01010113          	addi	sp,sp,16
    80003cac:	00008067          	ret
        return -1;
    80003cb0:	fff00513          	li	a0,-1
}
    80003cb4:	00008067          	ret

0000000080003cb8 <_ZN6Thread8dispatchEv>:
void Thread::dispatch() {
    80003cb8:	ff010113          	addi	sp,sp,-16
    80003cbc:	00113423          	sd	ra,8(sp)
    80003cc0:	00813023          	sd	s0,0(sp)
    80003cc4:	01010413          	addi	s0,sp,16
    thread_dispatch();
    80003cc8:	ffffe097          	auipc	ra,0xffffe
    80003ccc:	254080e7          	jalr	596(ra) # 80001f1c <_Z15thread_dispatchv>
}
    80003cd0:	00813083          	ld	ra,8(sp)
    80003cd4:	00013403          	ld	s0,0(sp)
    80003cd8:	01010113          	addi	sp,sp,16
    80003cdc:	00008067          	ret

0000000080003ce0 <_ZN6Thread5sleepEm>:
{
    80003ce0:	ff010113          	addi	sp,sp,-16
    80003ce4:	00113423          	sd	ra,8(sp)
    80003ce8:	00813023          	sd	s0,0(sp)
    80003cec:	01010413          	addi	s0,sp,16
    time_sleep(time);
    80003cf0:	ffffe097          	auipc	ra,0xffffe
    80003cf4:	330080e7          	jalr	816(ra) # 80002020 <_Z10time_sleepm>
}
    80003cf8:	00813083          	ld	ra,8(sp)
    80003cfc:	00013403          	ld	s0,0(sp)
    80003d00:	01010113          	addi	sp,sp,16
    80003d04:	00008067          	ret

0000000080003d08 <_ZN14PeriodicThread6runnerEPv>:
{

}

void PeriodicThread::runner(void* arg)
{
    80003d08:	fe010113          	addi	sp,sp,-32
    80003d0c:	00113c23          	sd	ra,24(sp)
    80003d10:	00813823          	sd	s0,16(sp)
    80003d14:	00913423          	sd	s1,8(sp)
    80003d18:	01213023          	sd	s2,0(sp)
    80003d1c:	02010413          	addi	s0,sp,32
    PeriodicThread *pThread =(PeriodicThread*) ((ArgsPeriodic*)arg)->pt;
    80003d20:	00053483          	ld	s1,0(a0)
    uint64 time = ((ArgsPeriodic*)arg)->time;
    80003d24:	00853903          	ld	s2,8(a0)

    while(true)
    {
        pThread->periodicActivation();
    80003d28:	0004b783          	ld	a5,0(s1)
    80003d2c:	0187b783          	ld	a5,24(a5)
    80003d30:	00048513          	mv	a0,s1
    80003d34:	000780e7          	jalr	a5
        Thread::sleep(time);
    80003d38:	00090513          	mv	a0,s2
    80003d3c:	00000097          	auipc	ra,0x0
    80003d40:	fa4080e7          	jalr	-92(ra) # 80003ce0 <_ZN6Thread5sleepEm>
    while(true)
    80003d44:	fe5ff06f          	j	80003d28 <_ZN14PeriodicThread6runnerEPv+0x20>

0000000080003d48 <_ZN6ThreadC1EPFvPvES0_>:
Thread::Thread(void (*body)(void *), void *args)
    80003d48:	ff010113          	addi	sp,sp,-16
    80003d4c:	00113423          	sd	ra,8(sp)
    80003d50:	00813023          	sd	s0,0(sp)
    80003d54:	01010413          	addi	s0,sp,16
    80003d58:	00007797          	auipc	a5,0x7
    80003d5c:	93078793          	addi	a5,a5,-1744 # 8000a688 <_ZTV6Thread+0x10>
    80003d60:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    80003d64:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, body, args);
    80003d68:	00850513          	addi	a0,a0,8
    80003d6c:	ffffe097          	auipc	ra,0xffffe
    80003d70:	30c080e7          	jalr	780(ra) # 80002078 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    80003d74:	00813083          	ld	ra,8(sp)
    80003d78:	00013403          	ld	s0,0(sp)
    80003d7c:	01010113          	addi	sp,sp,16
    80003d80:	00008067          	ret

0000000080003d84 <_ZN6ThreadC1Ev>:
Thread::Thread()
    80003d84:	ff010113          	addi	sp,sp,-16
    80003d88:	00113423          	sd	ra,8(sp)
    80003d8c:	00813023          	sd	s0,0(sp)
    80003d90:	01010413          	addi	s0,sp,16
    80003d94:	00007797          	auipc	a5,0x7
    80003d98:	8f478793          	addi	a5,a5,-1804 # 8000a688 <_ZTV6Thread+0x10>
    80003d9c:	00f53023          	sd	a5,0(a0)
    myHandle = 0;
    80003da0:	00053423          	sd	zero,8(a0)
    thread_make_pcb(&myHandle, &Thread::runner, (void*)this);
    80003da4:	00050613          	mv	a2,a0
    80003da8:	00000597          	auipc	a1,0x0
    80003dac:	d5c58593          	addi	a1,a1,-676 # 80003b04 <_ZN6Thread6runnerEPv>
    80003db0:	00850513          	addi	a0,a0,8
    80003db4:	ffffe097          	auipc	ra,0xffffe
    80003db8:	2c4080e7          	jalr	708(ra) # 80002078 <_Z15thread_make_pcbPP7_threadPFvPvES2_>
}
    80003dbc:	00813083          	ld	ra,8(sp)
    80003dc0:	00013403          	ld	s0,0(sp)
    80003dc4:	01010113          	addi	sp,sp,16
    80003dc8:	00008067          	ret

0000000080003dcc <_ZN9Semaphore4waitEv>:
    if(myHandle == 0)
    80003dcc:	00853503          	ld	a0,8(a0)
    80003dd0:	02050663          	beqz	a0,80003dfc <_ZN9Semaphore4waitEv+0x30>
{
    80003dd4:	ff010113          	addi	sp,sp,-16
    80003dd8:	00113423          	sd	ra,8(sp)
    80003ddc:	00813023          	sd	s0,0(sp)
    80003de0:	01010413          	addi	s0,sp,16
    return sem_wait(myHandle);
    80003de4:	ffffe097          	auipc	ra,0xffffe
    80003de8:	1e4080e7          	jalr	484(ra) # 80001fc8 <_Z8sem_waitP4_sem>
}
    80003dec:	00813083          	ld	ra,8(sp)
    80003df0:	00013403          	ld	s0,0(sp)
    80003df4:	01010113          	addi	sp,sp,16
    80003df8:	00008067          	ret
        return -1;
    80003dfc:	fff00513          	li	a0,-1
}
    80003e00:	00008067          	ret

0000000080003e04 <_ZN9SemaphoreC1Ej>:
Semaphore::Semaphore(unsigned int init)
    80003e04:	fe010113          	addi	sp,sp,-32
    80003e08:	00113c23          	sd	ra,24(sp)
    80003e0c:	00813823          	sd	s0,16(sp)
    80003e10:	00913423          	sd	s1,8(sp)
    80003e14:	02010413          	addi	s0,sp,32
    80003e18:	00050493          	mv	s1,a0
    80003e1c:	00007797          	auipc	a5,0x7
    80003e20:	89478793          	addi	a5,a5,-1900 # 8000a6b0 <_ZTV9Semaphore+0x10>
    80003e24:	00f53023          	sd	a5,0(a0)
    int retval = sem_open(&myHandle, init);
    80003e28:	00850513          	addi	a0,a0,8
    80003e2c:	ffffe097          	auipc	ra,0xffffe
    80003e30:	138080e7          	jalr	312(ra) # 80001f64 <_Z8sem_openPP4_semj>
    if(retval != 0)
    80003e34:	00050463          	beqz	a0,80003e3c <_ZN9SemaphoreC1Ej+0x38>
        myHandle = 0;
    80003e38:	0004b423          	sd	zero,8(s1)
}
    80003e3c:	01813083          	ld	ra,24(sp)
    80003e40:	01013403          	ld	s0,16(sp)
    80003e44:	00813483          	ld	s1,8(sp)
    80003e48:	02010113          	addi	sp,sp,32
    80003e4c:	00008067          	ret

0000000080003e50 <_ZN9Semaphore6signalEv>:
    if(myHandle == 0)
    80003e50:	00853503          	ld	a0,8(a0)
    80003e54:	02050663          	beqz	a0,80003e80 <_ZN9Semaphore6signalEv+0x30>
{
    80003e58:	ff010113          	addi	sp,sp,-16
    80003e5c:	00113423          	sd	ra,8(sp)
    80003e60:	00813023          	sd	s0,0(sp)
    80003e64:	01010413          	addi	s0,sp,16
    return sem_signal(myHandle);
    80003e68:	ffffe097          	auipc	ra,0xffffe
    80003e6c:	18c080e7          	jalr	396(ra) # 80001ff4 <_Z10sem_signalP4_sem>
}
    80003e70:	00813083          	ld	ra,8(sp)
    80003e74:	00013403          	ld	s0,0(sp)
    80003e78:	01010113          	addi	sp,sp,16
    80003e7c:	00008067          	ret
        return -1;
    80003e80:	fff00513          	li	a0,-1
}
    80003e84:	00008067          	ret

0000000080003e88 <_ZN7Console4getcEv>:
{
    80003e88:	ff010113          	addi	sp,sp,-16
    80003e8c:	00113423          	sd	ra,8(sp)
    80003e90:	00813023          	sd	s0,0(sp)
    80003e94:	01010413          	addi	s0,sp,16
    return ::getc();
    80003e98:	ffffe097          	auipc	ra,0xffffe
    80003e9c:	260080e7          	jalr	608(ra) # 800020f8 <_Z4getcv>
}
    80003ea0:	00813083          	ld	ra,8(sp)
    80003ea4:	00013403          	ld	s0,0(sp)
    80003ea8:	01010113          	addi	sp,sp,16
    80003eac:	00008067          	ret

0000000080003eb0 <_ZN7Console4putcEc>:
{
    80003eb0:	ff010113          	addi	sp,sp,-16
    80003eb4:	00113423          	sd	ra,8(sp)
    80003eb8:	00813023          	sd	s0,0(sp)
    80003ebc:	01010413          	addi	s0,sp,16
    return ::putc(c);
    80003ec0:	ffffe097          	auipc	ra,0xffffe
    80003ec4:	260080e7          	jalr	608(ra) # 80002120 <_Z4putcc>
}
    80003ec8:	00813083          	ld	ra,8(sp)
    80003ecc:	00013403          	ld	s0,0(sp)
    80003ed0:	01010113          	addi	sp,sp,16
    80003ed4:	00008067          	ret

0000000080003ed8 <_ZN14PeriodicThreadC1Em>:
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80003ed8:	fe010113          	addi	sp,sp,-32
    80003edc:	00113c23          	sd	ra,24(sp)
    80003ee0:	00813823          	sd	s0,16(sp)
    80003ee4:	00913423          	sd	s1,8(sp)
    80003ee8:	01213023          	sd	s2,0(sp)
    80003eec:	02010413          	addi	s0,sp,32
    80003ef0:	00050493          	mv	s1,a0
    80003ef4:	00058913          	mv	s2,a1
    80003ef8:	01000513          	li	a0,16
    80003efc:	00000097          	auipc	ra,0x0
    80003f00:	cb4080e7          	jalr	-844(ra) # 80003bb0 <_Znwm>
    80003f04:	00050613          	mv	a2,a0
    ArgsPeriodic(void *p, uint64 t) : pt(p), time(t){}
    80003f08:	00953023          	sd	s1,0(a0)
    80003f0c:	01253423          	sd	s2,8(a0)
PeriodicThread::PeriodicThread(time_t period) : Thread(&PeriodicThread::runner, new ArgsPeriodic((void*)this, period))
    80003f10:	00000597          	auipc	a1,0x0
    80003f14:	df858593          	addi	a1,a1,-520 # 80003d08 <_ZN14PeriodicThread6runnerEPv>
    80003f18:	00048513          	mv	a0,s1
    80003f1c:	00000097          	auipc	ra,0x0
    80003f20:	e2c080e7          	jalr	-468(ra) # 80003d48 <_ZN6ThreadC1EPFvPvES0_>
    80003f24:	00006797          	auipc	a5,0x6
    80003f28:	73478793          	addi	a5,a5,1844 # 8000a658 <_ZTV14PeriodicThread+0x10>
    80003f2c:	00f4b023          	sd	a5,0(s1)
}
    80003f30:	01813083          	ld	ra,24(sp)
    80003f34:	01013403          	ld	s0,16(sp)
    80003f38:	00813483          	ld	s1,8(sp)
    80003f3c:	00013903          	ld	s2,0(sp)
    80003f40:	02010113          	addi	sp,sp,32
    80003f44:	00008067          	ret

0000000080003f48 <_ZN6Thread3runEv>:
    static void sleep(time_t);

protected:
    Thread();

    virtual void run() {}
    80003f48:	ff010113          	addi	sp,sp,-16
    80003f4c:	00813423          	sd	s0,8(sp)
    80003f50:	01010413          	addi	s0,sp,16
    80003f54:	00813403          	ld	s0,8(sp)
    80003f58:	01010113          	addi	sp,sp,16
    80003f5c:	00008067          	ret

0000000080003f60 <_ZN14PeriodicThread18periodicActivationEv>:

class PeriodicThread : public Thread
{
protected:
    PeriodicThread(time_t period);
    virtual void periodicActivation() {};
    80003f60:	ff010113          	addi	sp,sp,-16
    80003f64:	00813423          	sd	s0,8(sp)
    80003f68:	01010413          	addi	s0,sp,16
    80003f6c:	00813403          	ld	s0,8(sp)
    80003f70:	01010113          	addi	sp,sp,16
    80003f74:	00008067          	ret

0000000080003f78 <_ZN14PeriodicThreadD1Ev>:
class PeriodicThread : public Thread
    80003f78:	ff010113          	addi	sp,sp,-16
    80003f7c:	00113423          	sd	ra,8(sp)
    80003f80:	00813023          	sd	s0,0(sp)
    80003f84:	01010413          	addi	s0,sp,16
    80003f88:	00006797          	auipc	a5,0x6
    80003f8c:	6d078793          	addi	a5,a5,1744 # 8000a658 <_ZTV14PeriodicThread+0x10>
    80003f90:	00f53023          	sd	a5,0(a0)
    80003f94:	00000097          	auipc	ra,0x0
    80003f98:	b9c080e7          	jalr	-1124(ra) # 80003b30 <_ZN6ThreadD1Ev>
    80003f9c:	00813083          	ld	ra,8(sp)
    80003fa0:	00013403          	ld	s0,0(sp)
    80003fa4:	01010113          	addi	sp,sp,16
    80003fa8:	00008067          	ret

0000000080003fac <_ZN14PeriodicThreadD0Ev>:
    80003fac:	fe010113          	addi	sp,sp,-32
    80003fb0:	00113c23          	sd	ra,24(sp)
    80003fb4:	00813823          	sd	s0,16(sp)
    80003fb8:	00913423          	sd	s1,8(sp)
    80003fbc:	02010413          	addi	s0,sp,32
    80003fc0:	00050493          	mv	s1,a0
    80003fc4:	00006797          	auipc	a5,0x6
    80003fc8:	69478793          	addi	a5,a5,1684 # 8000a658 <_ZTV14PeriodicThread+0x10>
    80003fcc:	00f53023          	sd	a5,0(a0)
    80003fd0:	00000097          	auipc	ra,0x0
    80003fd4:	b60080e7          	jalr	-1184(ra) # 80003b30 <_ZN6ThreadD1Ev>
    80003fd8:	00048513          	mv	a0,s1
    80003fdc:	00000097          	auipc	ra,0x0
    80003fe0:	bfc080e7          	jalr	-1028(ra) # 80003bd8 <_ZdlPv>
    80003fe4:	01813083          	ld	ra,24(sp)
    80003fe8:	01013403          	ld	s0,16(sp)
    80003fec:	00813483          	ld	s1,8(sp)
    80003ff0:	02010113          	addi	sp,sp,32
    80003ff4:	00008067          	ret

0000000080003ff8 <_ZN4_semdlEPv>:
//

#include "../h/_sem.hpp"
#include "../h/syscall_c.hpp"

void _sem::operator delete(void *p) {
    80003ff8:	ff010113          	addi	sp,sp,-16
    80003ffc:	00113423          	sd	ra,8(sp)
    80004000:	00813023          	sd	s0,0(sp)
    80004004:	01010413          	addi	s0,sp,16
    sem_close((sem_t)p);
    80004008:	ffffe097          	auipc	ra,0xffffe
    8000400c:	f94080e7          	jalr	-108(ra) # 80001f9c <_Z9sem_closeP4_sem>
}
    80004010:	00813083          	ld	ra,8(sp)
    80004014:	00013403          	ld	s0,0(sp)
    80004018:	01010113          	addi	sp,sp,16
    8000401c:	00008067          	ret

0000000080004020 <_ZN5Riscv10initSystemEv>:
uint64 Riscv::totalTime = 0;
bool Riscv::finishSystem = false;
bool Riscv::kernelMainCalled = false;

void Riscv::initSystem()
{
    80004020:	ff010113          	addi	sp,sp,-16
    80004024:	00113423          	sd	ra,8(sp)
    80004028:	00813023          	sd	s0,0(sp)
    8000402c:	01010413          	addi	s0,sp,16
    w_stvec((uint64)&Riscv::supervisorTrap);
    80004030:	00006797          	auipc	a5,0x6
    80004034:	6c87b783          	ld	a5,1736(a5) # 8000a6f8 <_GLOBAL_OFFSET_TABLE_+0x20>
    __asm__ volatile("csrr %0, stvec" : "=r"(stvec));
    return stvec;
}

inline void Riscv::w_stvec(uint64 stvec) {
    __asm__ volatile("csrw stvec, %0" : :"r"(stvec));
    80004038:	10579073          	csrw	stvec,a5
    PCB::initialize();
    8000403c:	ffffe097          	auipc	ra,0xffffe
    80004040:	348080e7          	jalr	840(ra) # 80002384 <_ZN3PCB10initializeEv>
    KConsole::initialize();
    80004044:	fffff097          	auipc	ra,0xfffff
    80004048:	fe8080e7          	jalr	-24(ra) # 8000302c <_ZN8KConsole10initializeEv>
}
    8000404c:	00813083          	ld	ra,8(sp)
    80004050:	00013403          	ld	s0,0(sp)
    80004054:	01010113          	addi	sp,sp,16
    80004058:	00008067          	ret

000000008000405c <_ZN5Riscv16enableInterruptsEv>:
        thread_dispatch();
    }
    disableInterrupts();
}

void Riscv::enableInterrupts() {
    8000405c:	ff010113          	addi	sp,sp,-16
    80004060:	00813423          	sd	s0,8(sp)
    80004064:	01010413          	addi	s0,sp,16
inline void Riscv::w_sip(uint64 sip) {
    __asm__ volatile("csrw sip, %0" : :"r"(sip));
}

inline void Riscv::ms_sstatus(uint64 mask) {
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80004068:	00200793          	li	a5,2
    8000406c:	1007a073          	csrs	sstatus,a5
    ms_sstatus(Riscv::SSTATUS_SIE);
}
    80004070:	00813403          	ld	s0,8(sp)
    80004074:	01010113          	addi	sp,sp,16
    80004078:	00008067          	ret

000000008000407c <_ZN5Riscv17disableInterruptsEv>:

void Riscv::disableInterrupts()
{
    8000407c:	ff010113          	addi	sp,sp,-16
    80004080:	00813423          	sd	s0,8(sp)
    80004084:	01010413          	addi	s0,sp,16
}

inline void Riscv::mc_sstatus(uint64 mask) {
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80004088:	00200793          	li	a5,2
    8000408c:	1007b073          	csrc	sstatus,a5
    mc_sstatus(Riscv::SSTATUS_SIE);
}
    80004090:	00813403          	ld	s0,8(sp)
    80004094:	01010113          	addi	sp,sp,16
    80004098:	00008067          	ret

000000008000409c <_ZN5Riscv9endSystemEv>:
{
    8000409c:	ff010113          	addi	sp,sp,-16
    800040a0:	00113423          	sd	ra,8(sp)
    800040a4:	00813023          	sd	s0,0(sp)
    800040a8:	01010413          	addi	s0,sp,16
    disableInterrupts();
    800040ac:	00000097          	auipc	ra,0x0
    800040b0:	fd0080e7          	jalr	-48(ra) # 8000407c <_ZN5Riscv17disableInterruptsEv>
    finishSystem = true;
    800040b4:	00100793          	li	a5,1
    800040b8:	0000a717          	auipc	a4,0xa
    800040bc:	76f70823          	sb	a5,1904(a4) # 8000e828 <_ZN5Riscv12finishSystemE>
        pcb = Scheduler::get();
    800040c0:	fffff097          	auipc	ra,0xfffff
    800040c4:	6c0080e7          	jalr	1728(ra) # 80003780 <_ZN9Scheduler3getEv>
        if(pcb == 0) break;
    800040c8:	fe051ce3          	bnez	a0,800040c0 <_ZN5Riscv9endSystemEv+0x24>
    Scheduler::put(PCB::consolePCB);
    800040cc:	00006797          	auipc	a5,0x6
    800040d0:	6647b783          	ld	a5,1636(a5) # 8000a730 <_GLOBAL_OFFSET_TABLE_+0x58>
    800040d4:	0007b503          	ld	a0,0(a5)
    800040d8:	fffff097          	auipc	ra,0xfffff
    800040dc:	654080e7          	jalr	1620(ra) # 8000372c <_ZN9Scheduler3putEP3PCB>
    KConsole::pendingGetc = 0;
    800040e0:	00006797          	auipc	a5,0x6
    800040e4:	6207b783          	ld	a5,1568(a5) # 8000a700 <_GLOBAL_OFFSET_TABLE_+0x28>
    800040e8:	0007b023          	sd	zero,0(a5)
    enableInterrupts();
    800040ec:	00000097          	auipc	ra,0x0
    800040f0:	f70080e7          	jalr	-144(ra) # 8000405c <_ZN5Riscv16enableInterruptsEv>
    while(!PCB::consolePCB->isFinished())
    800040f4:	00006797          	auipc	a5,0x6
    800040f8:	63c7b783          	ld	a5,1596(a5) # 8000a730 <_GLOBAL_OFFSET_TABLE_+0x58>
    800040fc:	0007b503          	ld	a0,0(a5)
    80004100:	ffffe097          	auipc	ra,0xffffe
    80004104:	3a4080e7          	jalr	932(ra) # 800024a4 <_ZN3PCB10isFinishedEv>
    80004108:	00051863          	bnez	a0,80004118 <_ZN5Riscv9endSystemEv+0x7c>
        thread_dispatch();
    8000410c:	ffffe097          	auipc	ra,0xffffe
    80004110:	e10080e7          	jalr	-496(ra) # 80001f1c <_Z15thread_dispatchv>
    while(!PCB::consolePCB->isFinished())
    80004114:	fe1ff06f          	j	800040f4 <_ZN5Riscv9endSystemEv+0x58>
    disableInterrupts();
    80004118:	00000097          	auipc	ra,0x0
    8000411c:	f64080e7          	jalr	-156(ra) # 8000407c <_ZN5Riscv17disableInterruptsEv>
}
    80004120:	00813083          	ld	ra,8(sp)
    80004124:	00013403          	ld	s0,0(sp)
    80004128:	01010113          	addi	sp,sp,16
    8000412c:	00008067          	ret

0000000080004130 <_ZN5Riscv10popSppSpieEv>:

void Riscv::popSppSpie()
{
    80004130:	ff010113          	addi	sp,sp,-16
    80004134:	00813423          	sd	s0,8(sp)
    80004138:	01010413          	addi	s0,sp,16
    __asm__ volatile ("csrw sepc, ra");
    8000413c:	14109073          	csrw	sepc,ra
    __asm__ volatile ("sret");
    80004140:	10200073          	sret
}
    80004144:	00813403          	ld	s0,8(sp)
    80004148:	01010113          	addi	sp,sp,16
    8000414c:	00008067          	ret

0000000080004150 <_ZN5Riscv10kernelMainEv>:
    }
}

void Riscv::kernelMain()
{
    if(kernelMainCalled) return;
    80004150:	0000a797          	auipc	a5,0xa
    80004154:	6d97c783          	lbu	a5,1753(a5) # 8000e829 <_ZN5Riscv16kernelMainCalledE>
    80004158:	00078463          	beqz	a5,80004160 <_ZN5Riscv10kernelMainEv+0x10>
    8000415c:	00008067          	ret
{
    80004160:	ff010113          	addi	sp,sp,-16
    80004164:	00113423          	sd	ra,8(sp)
    80004168:	00813023          	sd	s0,0(sp)
    8000416c:	01010413          	addi	s0,sp,16
    kernelMainCalled = true;
    80004170:	00100793          	li	a5,1
    80004174:	0000a717          	auipc	a4,0xa
    80004178:	6af70aa3          	sb	a5,1717(a4) # 8000e829 <_ZN5Riscv16kernelMainCalledE>

    initSystem();
    8000417c:	00000097          	auipc	ra,0x0
    80004180:	ea4080e7          	jalr	-348(ra) # 80004020 <_ZN5Riscv10initSystemEv>
    buddyOnlyAllocsTest2();
    80004184:	fffff097          	auipc	ra,0xfffff
    80004188:	7cc080e7          	jalr	1996(ra) # 80003950 <_Z20buddyOnlyAllocsTest2v>
    {
        thread_dispatch();
    }*/

    //printString("End...\n");
    endSystem();
    8000418c:	00000097          	auipc	ra,0x0
    80004190:	f10080e7          	jalr	-240(ra) # 8000409c <_ZN5Riscv9endSystemEv>
}
    80004194:	00813083          	ld	ra,8(sp)
    80004198:	00013403          	ld	s0,0(sp)
    8000419c:	01010113          	addi	sp,sp,16
    800041a0:	00008067          	ret

00000000800041a4 <_ZN5Riscv15userMainWrapperEPv>:

void Riscv::userMainWrapper(void* )
{
    800041a4:	ff010113          	addi	sp,sp,-16
    800041a8:	00113423          	sd	ra,8(sp)
    800041ac:	00813023          	sd	s0,0(sp)
    800041b0:	01010413          	addi	s0,sp,16
    userMain();
    800041b4:	00002097          	auipc	ra,0x2
    800041b8:	930080e7          	jalr	-1744(ra) # 80005ae4 <_Z8userMainv>
}
    800041bc:	00813083          	ld	ra,8(sp)
    800041c0:	00013403          	ld	s0,0(sp)
    800041c4:	01010113          	addi	sp,sp,16
    800041c8:	00008067          	ret

00000000800041cc <_ZN5Riscv22disableTimerInterruptsEv>:

void Riscv::disableTimerInterrupts()
{
    800041cc:	ff010113          	addi	sp,sp,-16
    800041d0:	00813423          	sd	s0,8(sp)
    800041d4:	01010413          	addi	s0,sp,16
    uint64 x = 0x2;
    __asm__ volatile("csrc sie, %0"::"r"(x));
    800041d8:	00200793          	li	a5,2
    800041dc:	1047b073          	csrc	sie,a5
}
    800041e0:	00813403          	ld	s0,8(sp)
    800041e4:	01010113          	addi	sp,sp,16
    800041e8:	00008067          	ret

00000000800041ec <_ZN5Riscv13w_a0_sscratchEv>:

void Riscv::w_a0_sscratch()
{
    800041ec:	ff010113          	addi	sp,sp,-16
    800041f0:	00813423          	sd	s0,8(sp)
    800041f4:	01010413          	addi	s0,sp,16
    uint64 a1Temp;
    __asm__ volatile("mv %0, a1":"=r"(a1Temp));
    800041f8:	00058793          	mv	a5,a1
    __asm__ volatile("mv a1, %0"::"r"(PCB::running->sscratch));
    800041fc:	00006717          	auipc	a4,0x6
    80004200:	54473703          	ld	a4,1348(a4) # 8000a740 <_GLOBAL_OFFSET_TABLE_+0x68>
    80004204:	00073703          	ld	a4,0(a4)
    80004208:	01073703          	ld	a4,16(a4)
    8000420c:	00070593          	mv	a1,a4
    __asm__ volatile("sd a0, 80(a1)");
    80004210:	04a5b823          	sd	a0,80(a1)
    __asm__ volatile("mv a1,%0"::"r"(a1Temp));
    80004214:	00078593          	mv	a1,a5
}
    80004218:	00813403          	ld	s0,8(sp)
    8000421c:	01010113          	addi	sp,sp,16
    80004220:	00008067          	ret

0000000080004224 <_ZN5Riscv14changePrivModeEv>:

void Riscv::changePrivMode()
{
    80004224:	ff010113          	addi	sp,sp,-16
    80004228:	00813423          	sd	s0,8(sp)
    8000422c:	01010413          	addi	s0,sp,16
    if(PCB::running->systemThread)
    80004230:	00006797          	auipc	a5,0x6
    80004234:	5107b783          	ld	a5,1296(a5) # 8000a740 <_GLOBAL_OFFSET_TABLE_+0x68>
    80004238:	0007b783          	ld	a5,0(a5)
    8000423c:	0007c783          	lbu	a5,0(a5)
    80004240:	00078c63          	beqz	a5,80004258 <_ZN5Riscv14changePrivModeEv+0x34>
    __asm__ volatile("csrs sstatus, %0" : :"r"(mask));
    80004244:	10000793          	li	a5,256
    80004248:	1007a073          	csrs	sstatus,a5
        Riscv::ms_sstatus(Riscv::SSTATUS_SPP);
    else
        Riscv::mc_sstatus(Riscv::SSTATUS_SPP);
}
    8000424c:	00813403          	ld	s0,8(sp)
    80004250:	01010113          	addi	sp,sp,16
    80004254:	00008067          	ret
    __asm__ volatile("csrc sstatus, %0" : :"r"(mask));
    80004258:	10000793          	li	a5,256
    8000425c:	1007b073          	csrc	sstatus,a5
    80004260:	fedff06f          	j	8000424c <_ZN5Riscv14changePrivModeEv+0x28>

0000000080004264 <_ZN5Riscv20handleSupervisorTrapEv>:
{
    80004264:	f9010113          	addi	sp,sp,-112
    80004268:	06113423          	sd	ra,104(sp)
    8000426c:	06813023          	sd	s0,96(sp)
    80004270:	04913c23          	sd	s1,88(sp)
    80004274:	07010413          	addi	s0,sp,112
    __asm__ volatile("mv %0, a4" : "=r"(PCB::savedRegA4));
    80004278:	00070713          	mv	a4,a4
    8000427c:	00006797          	auipc	a5,0x6
    80004280:	4dc7b783          	ld	a5,1244(a5) # 8000a758 <_GLOBAL_OFFSET_TABLE_+0x80>
    80004284:	00e7b023          	sd	a4,0(a5)
    __asm__ volatile("csrr %0, sscratch":"=r"(PCB::running->sscratch));
    80004288:	00006797          	auipc	a5,0x6
    8000428c:	4b87b783          	ld	a5,1208(a5) # 8000a740 <_GLOBAL_OFFSET_TABLE_+0x68>
    80004290:	0007b783          	ld	a5,0(a5)
    80004294:	14002773          	csrr	a4,sscratch
    80004298:	00e7b823          	sd	a4,16(a5)
    __asm__ volatile("csrr %0, scause" : "=r"(scause));
    8000429c:	142027f3          	csrr	a5,scause
    800042a0:	faf43c23          	sd	a5,-72(s0)
    return scause;
    800042a4:	fb843783          	ld	a5,-72(s0)
    switch(scause)
    800042a8:	00900713          	li	a4,9
    800042ac:	02f76e63          	bltu	a4,a5,800042e8 <_ZN5Riscv20handleSupervisorTrapEv+0x84>
    800042b0:	00800713          	li	a4,8
    800042b4:	12e7f463          	bgeu	a5,a4,800043dc <_ZN5Riscv20handleSupervisorTrapEv+0x178>
    800042b8:	00500713          	li	a4,5
    800042bc:	10e78a63          	beq	a5,a4,800043d0 <_ZN5Riscv20handleSupervisorTrapEv+0x16c>
    800042c0:	00700713          	li	a4,7
    800042c4:	00e79863          	bne	a5,a4,800042d4 <_ZN5Riscv20handleSupervisorTrapEv+0x70>
            PCB::threadExitHandler();
    800042c8:	ffffe097          	auipc	ra,0xffffe
    800042cc:	200080e7          	jalr	512(ra) # 800024c8 <_ZN3PCB17threadExitHandlerEv>
            break;
    800042d0:	0dc0006f          	j	800043ac <_ZN5Riscv20handleSupervisorTrapEv+0x148>
    switch(scause)
    800042d4:	00200713          	li	a4,2
    800042d8:	0ce79a63          	bne	a5,a4,800043ac <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            PCB::threadExitHandler();
    800042dc:	ffffe097          	auipc	ra,0xffffe
    800042e0:	1ec080e7          	jalr	492(ra) # 800024c8 <_ZN3PCB17threadExitHandlerEv>
            break;
    800042e4:	0c80006f          	j	800043ac <_ZN5Riscv20handleSupervisorTrapEv+0x148>
    switch(scause)
    800042e8:	fff00713          	li	a4,-1
    800042ec:	03f71713          	slli	a4,a4,0x3f
    800042f0:	00170713          	addi	a4,a4,1
    800042f4:	02e78863          	beq	a5,a4,80004324 <_ZN5Riscv20handleSupervisorTrapEv+0xc0>
    800042f8:	fff00713          	li	a4,-1
    800042fc:	03f71713          	slli	a4,a4,0x3f
    80004300:	00970713          	addi	a4,a4,9
    80004304:	0ae79463          	bne	a5,a4,800043ac <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            KConsole::getCharactersFromConsole();
    80004308:	fffff097          	auipc	ra,0xfffff
    8000430c:	e3c080e7          	jalr	-452(ra) # 80003144 <_ZN8KConsole24getCharactersFromConsoleEv>
            plic_complete(plic_claim());
    80004310:	00002097          	auipc	ra,0x2
    80004314:	374080e7          	jalr	884(ra) # 80006684 <plic_claim>
    80004318:	00002097          	auipc	ra,0x2
    8000431c:	3a4080e7          	jalr	932(ra) # 800066bc <plic_complete>
            break;
    80004320:	08c0006f          	j	800043ac <_ZN5Riscv20handleSupervisorTrapEv+0x148>
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    80004324:	141027f3          	csrr	a5,sepc
    80004328:	fcf43423          	sd	a5,-56(s0)
    return sepc;
    8000432c:	fc843783          	ld	a5,-56(s0)
            uint64 volatile sepc = Riscv::r_sepc();
    80004330:	f8f43c23          	sd	a5,-104(s0)
}

inline uint64 Riscv::r_sstatus() {
    uint64 volatile sstatus;
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    80004334:	100027f3          	csrr	a5,sstatus
    80004338:	fcf43023          	sd	a5,-64(s0)
    return sstatus;
    8000433c:	fc043783          	ld	a5,-64(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80004340:	faf43023          	sd	a5,-96(s0)
    __asm__ volatile("csrc sip, %0" : :"r"(mask));
    80004344:	00200793          	li	a5,2
    80004348:	1447b073          	csrc	sip,a5
            totalTime++;
    8000434c:	0000a717          	auipc	a4,0xa
    80004350:	4dc70713          	addi	a4,a4,1244 # 8000e828 <_ZN5Riscv12finishSystemE>
    80004354:	00873783          	ld	a5,8(a4)
    80004358:	00178793          	addi	a5,a5,1
    8000435c:	00f73423          	sd	a5,8(a4)
            PCB::timeSliceCounter++;
    80004360:	00006497          	auipc	s1,0x6
    80004364:	3b04b483          	ld	s1,944(s1) # 8000a710 <_GLOBAL_OFFSET_TABLE_+0x38>
    80004368:	0004b783          	ld	a5,0(s1)
    8000436c:	00178793          	addi	a5,a5,1
    80004370:	00f4b023          	sd	a5,0(s1)
            SleepPCBList::tryToWakePCBs();
    80004374:	fffff097          	auipc	ra,0xfffff
    80004378:	2a8080e7          	jalr	680(ra) # 8000361c <_ZN12SleepPCBList13tryToWakePCBsEv>
            if (PCB::timeSliceCounter >= PCB::running->getTimeSlice())
    8000437c:	00006797          	auipc	a5,0x6
    80004380:	3c47b783          	ld	a5,964(a5) # 8000a740 <_GLOBAL_OFFSET_TABLE_+0x68>
    80004384:	0007b783          	ld	a5,0(a5)
    uint64 getTimeSlice() { return timeSlice;}
    80004388:	0187b783          	ld	a5,24(a5)
    8000438c:	0004b703          	ld	a4,0(s1)
    80004390:	02f77863          	bgeu	a4,a5,800043c0 <_ZN5Riscv20handleSupervisorTrapEv+0x15c>
            Riscv::w_sstatus(sstatus);
    80004394:	fa043783          	ld	a5,-96(s0)
}

inline void Riscv::w_sstatus(uint64 sstatus) {
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80004398:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    8000439c:	f9843783          	ld	a5,-104(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    800043a0:	14179073          	csrw	sepc,a5
            changePrivMode();
    800043a4:	00000097          	auipc	ra,0x0
    800043a8:	e80080e7          	jalr	-384(ra) # 80004224 <_ZN5Riscv14changePrivModeEv>
}
    800043ac:	06813083          	ld	ra,104(sp)
    800043b0:	06013403          	ld	s0,96(sp)
    800043b4:	05813483          	ld	s1,88(sp)
    800043b8:	07010113          	addi	sp,sp,112
    800043bc:	00008067          	ret
                PCB::timeSliceCounter = 0;
    800043c0:	0004b023          	sd	zero,0(s1)
                PCB::dispatch();
    800043c4:	ffffe097          	auipc	ra,0xffffe
    800043c8:	eb8080e7          	jalr	-328(ra) # 8000227c <_ZN3PCB8dispatchEv>
    800043cc:	fc9ff06f          	j	80004394 <_ZN5Riscv20handleSupervisorTrapEv+0x130>
            PCB::threadExitHandler();
    800043d0:	ffffe097          	auipc	ra,0xffffe
    800043d4:	0f8080e7          	jalr	248(ra) # 800024c8 <_ZN3PCB17threadExitHandlerEv>
            break;
    800043d8:	fd5ff06f          	j	800043ac <_ZN5Riscv20handleSupervisorTrapEv+0x148>
            __asm__ volatile("mv %0, a0" :  "=r"(operation));
    800043dc:	00050793          	mv	a5,a0
    __asm__ volatile("csrr %0, sepc" : "=r"(sepc));
    800043e0:	14102773          	csrr	a4,sepc
    800043e4:	fce43c23          	sd	a4,-40(s0)
    return sepc;
    800043e8:	fd843703          	ld	a4,-40(s0)
            uint64 volatile sepc = Riscv::r_sepc() + 4;
    800043ec:	00470713          	addi	a4,a4,4
    800043f0:	fae43423          	sd	a4,-88(s0)
    __asm__ volatile("csrr %0, sstatus" : "=r"(sstatus));
    800043f4:	10002773          	csrr	a4,sstatus
    800043f8:	fce43823          	sd	a4,-48(s0)
    return sstatus;
    800043fc:	fd043703          	ld	a4,-48(s0)
            uint64 volatile sstatus = Riscv::r_sstatus();
    80004400:	fae43823          	sd	a4,-80(s0)
            switch(operation)
    80004404:	04300713          	li	a4,67
    80004408:	02f76463          	bltu	a4,a5,80004430 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
    8000440c:	00279793          	slli	a5,a5,0x2
    80004410:	00004717          	auipc	a4,0x4
    80004414:	ebc70713          	addi	a4,a4,-324 # 800082cc <CONSOLE_STATUS+0x2bc>
    80004418:	00e787b3          	add	a5,a5,a4
    8000441c:	0007a783          	lw	a5,0(a5)
    80004420:	00e787b3          	add	a5,a5,a4
    80004424:	00078067          	jr	a5
                    MemoryAllocator::memAllocHandler();
    80004428:	00000097          	auipc	ra,0x0
    8000442c:	55c080e7          	jalr	1372(ra) # 80004984 <_ZN15MemoryAllocator15memAllocHandlerEv>
            Riscv::w_sstatus(sstatus);
    80004430:	fb043783          	ld	a5,-80(s0)
    __asm__ volatile("csrw sstatus, %0" : :"r"(sstatus));
    80004434:	10079073          	csrw	sstatus,a5
            Riscv::w_sepc(sepc);
    80004438:	fa843783          	ld	a5,-88(s0)
    __asm__ volatile("csrw sepc, %0" : :"r"(sepc));
    8000443c:	14179073          	csrw	sepc,a5
            changePrivMode();
    80004440:	00000097          	auipc	ra,0x0
    80004444:	de4080e7          	jalr	-540(ra) # 80004224 <_ZN5Riscv14changePrivModeEv>
}
    80004448:	f65ff06f          	j	800043ac <_ZN5Riscv20handleSupervisorTrapEv+0x148>
                    MemoryAllocator::memFreeHandler();
    8000444c:	00000097          	auipc	ra,0x0
    80004450:	59c080e7          	jalr	1436(ra) # 800049e8 <_ZN15MemoryAllocator14memFreeHandlerEv>
                    break;
    80004454:	fddff06f          	j	80004430 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadMakePCBHandler();
    80004458:	ffffe097          	auipc	ra,0xffffe
    8000445c:	234080e7          	jalr	564(ra) # 8000268c <_ZN3PCB20threadMakePCBHandlerEv>
                    break;
    80004460:	fd1ff06f          	j	80004430 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadCreateHandler();
    80004464:	ffffe097          	auipc	ra,0xffffe
    80004468:	144080e7          	jalr	324(ra) # 800025a8 <_ZN3PCB19threadCreateHandlerEv>
                    break;
    8000446c:	fc5ff06f          	j	80004430 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadStartHandler();
    80004470:	ffffe097          	auipc	ra,0xffffe
    80004474:	1d8080e7          	jalr	472(ra) # 80002648 <_ZN3PCB18threadStartHandlerEv>
                    break;
    80004478:	fb9ff06f          	j	80004430 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadDispatchHandler();
    8000447c:	ffffe097          	auipc	ra,0xffffe
    80004480:	098080e7          	jalr	152(ra) # 80002514 <_ZN3PCB21threadDispatchHandlerEv>
                    break;
    80004484:	fadff06f          	j	80004430 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadExitHandler();
    80004488:	ffffe097          	auipc	ra,0xffffe
    8000448c:	040080e7          	jalr	64(ra) # 800024c8 <_ZN3PCB17threadExitHandlerEv>
                    break;
    80004490:	fa1ff06f          	j	80004430 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    PCB::threadSleepHandler();
    80004494:	ffffe097          	auipc	ra,0xffffe
    80004498:	0b0080e7          	jalr	176(ra) # 80002544 <_ZN3PCB18threadSleepHandlerEv>
                    break;
    8000449c:	f95ff06f          	j	80004430 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                     PCB::threadDelPCBHandler();
    800044a0:	ffffe097          	auipc	ra,0xffffe
    800044a4:	280080e7          	jalr	640(ra) # 80002720 <_ZN3PCB19threadDelPCBHandlerEv>
                     break;
    800044a8:	f89ff06f          	j	80004430 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semOpenHandler();
    800044ac:	00001097          	auipc	ra,0x1
    800044b0:	800080e7          	jalr	-2048(ra) # 80004cac <_ZN10KSemaphore14semOpenHandlerEv>
                    break;
    800044b4:	f7dff06f          	j	80004430 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semWaitHandler();
    800044b8:	00001097          	auipc	ra,0x1
    800044bc:	894080e7          	jalr	-1900(ra) # 80004d4c <_ZN10KSemaphore14semWaitHandlerEv>
                    break;
    800044c0:	f71ff06f          	j	80004430 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semSignalHandler();
    800044c4:	00001097          	auipc	ra,0x1
    800044c8:	8dc080e7          	jalr	-1828(ra) # 80004da0 <_ZN10KSemaphore16semSignalHandlerEv>
                    break;
    800044cc:	f65ff06f          	j	80004430 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KSemaphore::semCloseHandler();
    800044d0:	00001097          	auipc	ra,0x1
    800044d4:	914080e7          	jalr	-1772(ra) # 80004de4 <_ZN10KSemaphore15semCloseHandlerEv>
                    break;
    800044d8:	f59ff06f          	j	80004430 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KConsole::getcHandler();
    800044dc:	fffff097          	auipc	ra,0xfffff
    800044e0:	e6c080e7          	jalr	-404(ra) # 80003348 <_ZN8KConsole11getcHandlerEv>
                    break;
    800044e4:	f4dff06f          	j	80004430 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KConsole::putcHandler();
    800044e8:	fffff097          	auipc	ra,0xfffff
    800044ec:	e30080e7          	jalr	-464(ra) # 80003318 <_ZN8KConsole11putcHandlerEv>
                    break;
    800044f0:	f41ff06f          	j	80004430 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>
                    KConsole::getCharHandler();
    800044f4:	fffff097          	auipc	ra,0xfffff
    800044f8:	fb0080e7          	jalr	-80(ra) # 800034a4 <_ZN8KConsole14getCharHandlerEv>
                    break;
    800044fc:	f35ff06f          	j	80004430 <_ZN5Riscv20handleSupervisorTrapEv+0x1cc>

0000000080004500 <_ZN15MemoryAllocator10initMemoryEv>:
{
    return tryToFreeSegment(addr);
}

void MemoryAllocator::initMemory()
{
    80004500:	ff010113          	addi	sp,sp,-16
    80004504:	00813423          	sd	s0,8(sp)
    80004508:	01010413          	addi	s0,sp,16
    if(memoryInitiliaized == 1)
    8000450c:	0000a717          	auipc	a4,0xa
    80004510:	32c72703          	lw	a4,812(a4) # 8000e838 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004514:	00100793          	li	a5,1
    80004518:	04f70263          	beq	a4,a5,8000455c <_ZN15MemoryAllocator10initMemoryEv+0x5c>
        return;
    memoryInitiliaized = 1;
    8000451c:	0000a797          	auipc	a5,0xa
    80004520:	31c78793          	addi	a5,a5,796 # 8000e838 <_ZN15MemoryAllocator18memoryInitiliaizedE>
    80004524:	00100713          	li	a4,1
    80004528:	00e7a023          	sw	a4,0(a5)
    headAllocated = 0;
    8000452c:	0007b423          	sd	zero,8(a5)
    headFree = (BlockHeader*)HEAP_START_ADDR;
    80004530:	00006717          	auipc	a4,0x6
    80004534:	1c073703          	ld	a4,448(a4) # 8000a6f0 <_GLOBAL_OFFSET_TABLE_+0x18>
    80004538:	00073703          	ld	a4,0(a4)
    8000453c:	00e7b823          	sd	a4,16(a5)
    headFree->next = 0;
    80004540:	00073423          	sd	zero,8(a4)
    headFree->size = (size_t)((size_t)HEAP_END_ADDR - (size_t)HEAP_START_ADDR + 1 - sizeof(BlockHeader));
    80004544:	00006797          	auipc	a5,0x6
    80004548:	2047b783          	ld	a5,516(a5) # 8000a748 <_GLOBAL_OFFSET_TABLE_+0x70>
    8000454c:	0007b783          	ld	a5,0(a5)
    80004550:	40e787b3          	sub	a5,a5,a4
    80004554:	ff178793          	addi	a5,a5,-15
    80004558:	00f73023          	sd	a5,0(a4)
}
    8000455c:	00813403          	ld	s0,8(sp)
    80004560:	01010113          	addi	sp,sp,16
    80004564:	00008067          	ret

0000000080004568 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>:

void MemoryAllocator::insertAllFragment(void *addr, size_t size, void* nxtAddr)
{
    80004568:	fd010113          	addi	sp,sp,-48
    8000456c:	02113423          	sd	ra,40(sp)
    80004570:	02813023          	sd	s0,32(sp)
    80004574:	00913c23          	sd	s1,24(sp)
    80004578:	01213823          	sd	s2,16(sp)
    8000457c:	01313423          	sd	s3,8(sp)
    80004580:	03010413          	addi	s0,sp,48
    80004584:	00050493          	mv	s1,a0
    80004588:	00058993          	mv	s3,a1
    8000458c:	00060913          	mv	s2,a2
    initMemory();
    80004590:	00000097          	auipc	ra,0x0
    80004594:	f70080e7          	jalr	-144(ra) # 80004500 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80004598:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    8000459c:	0134b023          	sd	s3,0(s1)
    if(headAllocated == 0)
    800045a0:	0000a797          	auipc	a5,0xa
    800045a4:	2a07b783          	ld	a5,672(a5) # 8000e840 <_ZN15MemoryAllocator13headAllocatedE>
    800045a8:	02078e63          	beqz	a5,800045e4 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x7c>
    {
        headAllocated = newAllocated;
    }
    else if(nxtAddr <= HEAP_END_ADDR)
    800045ac:	00006717          	auipc	a4,0x6
    800045b0:	19c73703          	ld	a4,412(a4) # 8000a748 <_GLOBAL_OFFSET_TABLE_+0x70>
    800045b4:	00073703          	ld	a4,0(a4)
    800045b8:	03276c63          	bltu	a4,s2,800045f0 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x88>
    {
        BlockHeader * allFrag = (BlockHeader*)nxtAddr;
        newAllocated->next = allFrag->next;
    800045bc:	00893783          	ld	a5,8(s2)
    800045c0:	00f4b423          	sd	a5,8(s1)
        allFrag->next = newAllocated;
    800045c4:	00993423          	sd	s1,8(s2)
    else
    {
        newAllocated->next = headAllocated;
        headAllocated = newAllocated;
    }
}
    800045c8:	02813083          	ld	ra,40(sp)
    800045cc:	02013403          	ld	s0,32(sp)
    800045d0:	01813483          	ld	s1,24(sp)
    800045d4:	01013903          	ld	s2,16(sp)
    800045d8:	00813983          	ld	s3,8(sp)
    800045dc:	03010113          	addi	sp,sp,48
    800045e0:	00008067          	ret
        headAllocated = newAllocated;
    800045e4:	0000a797          	auipc	a5,0xa
    800045e8:	2497be23          	sd	s1,604(a5) # 8000e840 <_ZN15MemoryAllocator13headAllocatedE>
    800045ec:	fddff06f          	j	800045c8 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x60>
        newAllocated->next = headAllocated;
    800045f0:	00f4b423          	sd	a5,8(s1)
        headAllocated = newAllocated;
    800045f4:	0000a797          	auipc	a5,0xa
    800045f8:	2497b623          	sd	s1,588(a5) # 8000e840 <_ZN15MemoryAllocator13headAllocatedE>
}
    800045fc:	fcdff06f          	j	800045c8 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_+0x60>

0000000080004600 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm>:

void MemoryAllocator::insertNewAllocatedFragment(void *addr, size_t size)
{
    80004600:	fe010113          	addi	sp,sp,-32
    80004604:	00113c23          	sd	ra,24(sp)
    80004608:	00813823          	sd	s0,16(sp)
    8000460c:	00913423          	sd	s1,8(sp)
    80004610:	01213023          	sd	s2,0(sp)
    80004614:	02010413          	addi	s0,sp,32
    80004618:	00050493          	mv	s1,a0
    8000461c:	00058913          	mv	s2,a1
    initMemory();
    80004620:	00000097          	auipc	ra,0x0
    80004624:	ee0080e7          	jalr	-288(ra) # 80004500 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr =  headAllocated;
    80004628:	0000a797          	auipc	a5,0xa
    8000462c:	2187b783          	ld	a5,536(a5) # 8000e840 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* newAllocated = (BlockHeader*)addr;
    newAllocated->next = 0;
    80004630:	0004b423          	sd	zero,8(s1)
    newAllocated->size = size;
    80004634:	0124b023          	sd	s2,0(s1)
    BlockHeader* prev = 0;
    80004638:	00000713          	li	a4,0
    while(curr != 0)
    8000463c:	00078c63          	beqz	a5,80004654 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x54>
    {
        if((void*)curr > addr)
    80004640:	00f4e863          	bltu	s1,a5,80004650 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x50>
        {
            newAllocated->next = curr;
            break;
        }
        prev = curr;
    80004644:	00078713          	mv	a4,a5
        curr = curr->next;
    80004648:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    8000464c:	ff1ff06f          	j	8000463c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x3c>
            newAllocated->next = curr;
    80004650:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80004654:	02070063          	beqz	a4,80004674 <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x74>
        headAllocated = newAllocated;
    else
        prev->next = newAllocated;
    80004658:	00973423          	sd	s1,8(a4)
}
    8000465c:	01813083          	ld	ra,24(sp)
    80004660:	01013403          	ld	s0,16(sp)
    80004664:	00813483          	ld	s1,8(sp)
    80004668:	00013903          	ld	s2,0(sp)
    8000466c:	02010113          	addi	sp,sp,32
    80004670:	00008067          	ret
        headAllocated = newAllocated;
    80004674:	0000a797          	auipc	a5,0xa
    80004678:	1c97b623          	sd	s1,460(a5) # 8000e840 <_ZN15MemoryAllocator13headAllocatedE>
    8000467c:	fe1ff06f          	j	8000465c <_ZN15MemoryAllocator26insertNewAllocatedFragmentEPvm+0x5c>

0000000080004680 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>:

void* MemoryAllocator::tryToAllocateFragment(size_t size)
{
    80004680:	fe010113          	addi	sp,sp,-32
    80004684:	00113c23          	sd	ra,24(sp)
    80004688:	00813823          	sd	s0,16(sp)
    8000468c:	00913423          	sd	s1,8(sp)
    80004690:	01213023          	sd	s2,0(sp)
    80004694:	02010413          	addi	s0,sp,32
    80004698:	00050913          	mv	s2,a0
    initMemory();
    8000469c:	00000097          	auipc	ra,0x0
    800046a0:	e64080e7          	jalr	-412(ra) # 80004500 <_ZN15MemoryAllocator10initMemoryEv>
    uint64 retval = 0;
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    800046a4:	0000a497          	auipc	s1,0xa
    800046a8:	1a44b483          	ld	s1,420(s1) # 8000e848 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* prev = 0;
    800046ac:	00000713          	li	a4,0
    while(curr != 0)
    800046b0:	0c048063          	beqz	s1,80004770 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xf0>
    {
        if(curr->size >= size)
    800046b4:	0004b783          	ld	a5,0(s1)
    800046b8:	0127f863          	bgeu	a5,s2,800046c8 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x48>
            //insertNewAllocatedFragment(oldAddr, size);
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
            retval = oldA;
            break;
        }
        prev = curr;
    800046bc:	00048713          	mv	a4,s1
        curr = curr->next;
    800046c0:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800046c4:	fedff06f          	j	800046b0 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x30>
            void* newAddr = ((char*)curr + size + sizeof(BlockHeader));
    800046c8:	01090693          	addi	a3,s2,16
    800046cc:	00d486b3          	add	a3,s1,a3
            void* nxtAllFrag = ((char*)curr + curr->size + sizeof(BlockHeader));
    800046d0:	01078613          	addi	a2,a5,16
    800046d4:	00c48633          	add	a2,s1,a2
            if(newAddr <= HEAP_END_ADDR)
    800046d8:	00006597          	auipc	a1,0x6
    800046dc:	0705b583          	ld	a1,112(a1) # 8000a748 <_GLOBAL_OFFSET_TABLE_+0x70>
    800046e0:	0005b583          	ld	a1,0(a1)
    800046e4:	06d5e063          	bltu	a1,a3,80004744 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xc4>
                uint64 size2 = curr->size - size;
    800046e8:	412785b3          	sub	a1,a5,s2
                if(size2 > sizeof(BlockHeader))
    800046ec:	01000513          	li	a0,16
    800046f0:	02b57663          	bgeu	a0,a1,8000471c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x9c>
                    newFree->next = curr->next;
    800046f4:	0084b783          	ld	a5,8(s1)
    800046f8:	00f6b423          	sd	a5,8(a3)
                    newFree->size = size2 - sizeof(BlockHeader);
    800046fc:	ff058593          	addi	a1,a1,-16
    80004700:	00b6b023          	sd	a1,0(a3)
                    if (prev != 0)
    80004704:	00070663          	beqz	a4,80004710 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0x90>
                        prev->next = newFree;
    80004708:	00d73423          	sd	a3,8(a4)
    8000470c:	0400006f          	j	8000474c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = newFree;
    80004710:	0000a797          	auipc	a5,0xa
    80004714:	12d7bc23          	sd	a3,312(a5) # 8000e848 <_ZN15MemoryAllocator8headFreeE>
    80004718:	0340006f          	j	8000474c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                    if(prev != 0)
    8000471c:	00070a63          	beqz	a4,80004730 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xb0>
                        prev->next = curr->next;
    80004720:	0084b683          	ld	a3,8(s1)
    80004724:	00d73423          	sd	a3,8(a4)
                    size+=size2;
    80004728:	00078913          	mv	s2,a5
    8000472c:	0200006f          	j	8000474c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                        headFree = curr->next;
    80004730:	0084b703          	ld	a4,8(s1)
    80004734:	0000a697          	auipc	a3,0xa
    80004738:	10e6ba23          	sd	a4,276(a3) # 8000e848 <_ZN15MemoryAllocator8headFreeE>
                    size+=size2;
    8000473c:	00078913          	mv	s2,a5
    80004740:	00c0006f          	j	8000474c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
                if(prev != 0)
    80004744:	02070063          	beqz	a4,80004764 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xe4>
                    prev->next = 0;
    80004748:	00073423          	sd	zero,8(a4)
            insertAllFragment(oldAddr, size, nxtAllFrag);
    8000474c:	00090593          	mv	a1,s2
    80004750:	00048513          	mv	a0,s1
    80004754:	00000097          	auipc	ra,0x0
    80004758:	e14080e7          	jalr	-492(ra) # 80004568 <_ZN15MemoryAllocator17insertAllFragmentEPvmS0_>
            uint64 oldA = (uint64)((char*)oldAddr + sizeof(BlockHeader));
    8000475c:	01048513          	addi	a0,s1,16
            break;
    80004760:	0140006f          	j	80004774 <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xf4>
                    headFree = 0;
    80004764:	0000a797          	auipc	a5,0xa
    80004768:	0e07b223          	sd	zero,228(a5) # 8000e848 <_ZN15MemoryAllocator8headFreeE>
    8000476c:	fe1ff06f          	j	8000474c <_ZN15MemoryAllocator21tryToAllocateFragmentEm+0xcc>
    uint64 retval = 0;
    80004770:	00000513          	li	a0,0
    }

    return (void*)retval;
}
    80004774:	01813083          	ld	ra,24(sp)
    80004778:	01013403          	ld	s0,16(sp)
    8000477c:	00813483          	ld	s1,8(sp)
    80004780:	00013903          	ld	s2,0(sp)
    80004784:	02010113          	addi	sp,sp,32
    80004788:	00008067          	ret

000000008000478c <_ZN15MemoryAllocator9mem_allocEm>:
{
    8000478c:	ff010113          	addi	sp,sp,-16
    80004790:	00113423          	sd	ra,8(sp)
    80004794:	00813023          	sd	s0,0(sp)
    80004798:	01010413          	addi	s0,sp,16
    return tryToAllocateFragment(size);
    8000479c:	00000097          	auipc	ra,0x0
    800047a0:	ee4080e7          	jalr	-284(ra) # 80004680 <_ZN15MemoryAllocator21tryToAllocateFragmentEm>
}
    800047a4:	00813083          	ld	ra,8(sp)
    800047a8:	00013403          	ld	s0,0(sp)
    800047ac:	01010113          	addi	sp,sp,16
    800047b0:	00008067          	ret

00000000800047b4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>:

void MemoryAllocator::insertNewFreeSegment(void* addr, size_t size)
{
    800047b4:	fe010113          	addi	sp,sp,-32
    800047b8:	00113c23          	sd	ra,24(sp)
    800047bc:	00813823          	sd	s0,16(sp)
    800047c0:	00913423          	sd	s1,8(sp)
    800047c4:	01213023          	sd	s2,0(sp)
    800047c8:	02010413          	addi	s0,sp,32
    800047cc:	00050493          	mv	s1,a0
    800047d0:	00058913          	mv	s2,a1
    initMemory();
    800047d4:	00000097          	auipc	ra,0x0
    800047d8:	d2c080e7          	jalr	-724(ra) # 80004500 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headFree;
    800047dc:	0000a797          	auipc	a5,0xa
    800047e0:	06c7b783          	ld	a5,108(a5) # 8000e848 <_ZN15MemoryAllocator8headFreeE>
    BlockHeader* newSegment = (BlockHeader*)addr;
    newSegment->size = size;
    800047e4:	0124b023          	sd	s2,0(s1)
    newSegment->next = 0;
    800047e8:	0004b423          	sd	zero,8(s1)
    BlockHeader* prev = 0;
    800047ec:	00000713          	li	a4,0
    while(curr != 0)
    800047f0:	00078c63          	beqz	a5,80004808 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x54>
    {
        if((void*)curr > addr)
    800047f4:	00f4e863          	bltu	s1,a5,80004804 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x50>
        {
            newSegment->next = curr;
            break;
        }

        prev = curr;
    800047f8:	00078713          	mv	a4,a5
        curr = curr->next;
    800047fc:	0087b783          	ld	a5,8(a5)
    while(curr != 0)
    80004800:	ff1ff06f          	j	800047f0 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x3c>
            newSegment->next = curr;
    80004804:	00f4b423          	sd	a5,8(s1)
    }

    if(prev == 0)
    80004808:	04070663          	beqz	a4,80004854 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xa0>
        headFree = newSegment;
    else
        prev->next = newSegment;
    8000480c:	00973423          	sd	s1,8(a4)

    if(newSegment->next != 0 && (char*)newSegment->next == (char*)newSegment + newSegment->size + sizeof(BlockHeader))
    80004810:	0084b783          	ld	a5,8(s1)
    80004814:	00078a63          	beqz	a5,80004828 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
    80004818:	0004b603          	ld	a2,0(s1)
    8000481c:	01060693          	addi	a3,a2,16
    80004820:	00d486b3          	add	a3,s1,a3
    80004824:	02d78e63          	beq	a5,a3,80004860 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xac>
    {
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
        newSegment->next = newSegment->next->next;
    }

    if(prev != 0 && (char*)newSegment == (char*)prev + prev->size + sizeof(BlockHeader))
    80004828:	00070a63          	beqz	a4,8000483c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>
    8000482c:	00073683          	ld	a3,0(a4)
    80004830:	01068793          	addi	a5,a3,16
    80004834:	00f707b3          	add	a5,a4,a5
    80004838:	04978263          	beq	a5,s1,8000487c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0xc8>
    {
        prev->size+=newSegment->size + sizeof(BlockHeader);
        prev->next = newSegment->next;
    }
}
    8000483c:	01813083          	ld	ra,24(sp)
    80004840:	01013403          	ld	s0,16(sp)
    80004844:	00813483          	ld	s1,8(sp)
    80004848:	00013903          	ld	s2,0(sp)
    8000484c:	02010113          	addi	sp,sp,32
    80004850:	00008067          	ret
        headFree = newSegment;
    80004854:	0000a797          	auipc	a5,0xa
    80004858:	fe97ba23          	sd	s1,-12(a5) # 8000e848 <_ZN15MemoryAllocator8headFreeE>
    8000485c:	fb5ff06f          	j	80004810 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x5c>
        newSegment->size += newSegment->next->size + sizeof(BlockHeader);
    80004860:	0007b683          	ld	a3,0(a5)
    80004864:	00d60633          	add	a2,a2,a3
    80004868:	01060613          	addi	a2,a2,16
    8000486c:	00c4b023          	sd	a2,0(s1)
        newSegment->next = newSegment->next->next;
    80004870:	0087b783          	ld	a5,8(a5)
    80004874:	00f4b423          	sd	a5,8(s1)
    80004878:	fb1ff06f          	j	80004828 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x74>
        prev->size+=newSegment->size + sizeof(BlockHeader);
    8000487c:	0004b783          	ld	a5,0(s1)
    80004880:	00f686b3          	add	a3,a3,a5
    80004884:	01068693          	addi	a3,a3,16
    80004888:	00d73023          	sd	a3,0(a4)
        prev->next = newSegment->next;
    8000488c:	0084b783          	ld	a5,8(s1)
    80004890:	00f73423          	sd	a5,8(a4)
}
    80004894:	fa9ff06f          	j	8000483c <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm+0x88>

0000000080004898 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>:

uint64 MemoryAllocator::tryToFreeSegment(void* addr)
{
    80004898:	fe010113          	addi	sp,sp,-32
    8000489c:	00113c23          	sd	ra,24(sp)
    800048a0:	00813823          	sd	s0,16(sp)
    800048a4:	00913423          	sd	s1,8(sp)
    800048a8:	01213023          	sd	s2,0(sp)
    800048ac:	02010413          	addi	s0,sp,32
    800048b0:	00050913          	mv	s2,a0
    initMemory();
    800048b4:	00000097          	auipc	ra,0x0
    800048b8:	c4c080e7          	jalr	-948(ra) # 80004500 <_ZN15MemoryAllocator10initMemoryEv>
    BlockHeader* prev = 0;
    BlockHeader* curr = headAllocated;
    800048bc:	0000a497          	auipc	s1,0xa
    800048c0:	f844b483          	ld	s1,-124(s1) # 8000e840 <_ZN15MemoryAllocator13headAllocatedE>
    BlockHeader* prev = 0;
    800048c4:	00000713          	li	a4,0
    while(curr != 0)
    800048c8:	02048a63          	beqz	s1,800048fc <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x64>
    {
        if(addr == (void*)((char*)curr + sizeof(BlockHeader)))
    800048cc:	01048793          	addi	a5,s1,16
    800048d0:	01278863          	beq	a5,s2,800048e0 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x48>
            insertNewFreeSegment((void*)curr, curr->size);

            break;
        }

        prev = curr;
    800048d4:	00048713          	mv	a4,s1
        curr = curr->next;
    800048d8:	0084b483          	ld	s1,8(s1)
    while(curr != 0)
    800048dc:	fedff06f          	j	800048c8 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x30>
            if(prev != 0)
    800048e0:	02070e63          	beqz	a4,8000491c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x84>
                prev->next = curr->next;
    800048e4:	0084b783          	ld	a5,8(s1)
    800048e8:	00f73423          	sd	a5,8(a4)
            insertNewFreeSegment((void*)curr, curr->size);
    800048ec:	0004b583          	ld	a1,0(s1)
    800048f0:	00048513          	mv	a0,s1
    800048f4:	00000097          	auipc	ra,0x0
    800048f8:	ec0080e7          	jalr	-320(ra) # 800047b4 <_ZN15MemoryAllocator20insertNewFreeSegmentEPvm>
    }

    if(curr != 0)
    800048fc:	02048863          	beqz	s1,8000492c <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x94>
        return 0;
    80004900:	00000513          	li	a0,0
    else
        return 1;
}
    80004904:	01813083          	ld	ra,24(sp)
    80004908:	01013403          	ld	s0,16(sp)
    8000490c:	00813483          	ld	s1,8(sp)
    80004910:	00013903          	ld	s2,0(sp)
    80004914:	02010113          	addi	sp,sp,32
    80004918:	00008067          	ret
                headAllocated = curr->next;
    8000491c:	0084b783          	ld	a5,8(s1)
    80004920:	0000a717          	auipc	a4,0xa
    80004924:	f2f73023          	sd	a5,-224(a4) # 8000e840 <_ZN15MemoryAllocator13headAllocatedE>
    80004928:	fc5ff06f          	j	800048ec <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x54>
        return 1;
    8000492c:	00100513          	li	a0,1
    80004930:	fd5ff06f          	j	80004904 <_ZN15MemoryAllocator16tryToFreeSegmentEPv+0x6c>

0000000080004934 <_ZN15MemoryAllocator8mem_freeEPv>:
{
    80004934:	ff010113          	addi	sp,sp,-16
    80004938:	00113423          	sd	ra,8(sp)
    8000493c:	00813023          	sd	s0,0(sp)
    80004940:	01010413          	addi	s0,sp,16
    return tryToFreeSegment(addr);
    80004944:	00000097          	auipc	ra,0x0
    80004948:	f54080e7          	jalr	-172(ra) # 80004898 <_ZN15MemoryAllocator16tryToFreeSegmentEPv>
}
    8000494c:	00813083          	ld	ra,8(sp)
    80004950:	00013403          	ld	s0,0(sp)
    80004954:	01010113          	addi	sp,sp,16
    80004958:	00008067          	ret

000000008000495c <_ZN15MemoryAllocator7kmallocEm>:
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    Riscv::w_a0_sscratch();
}

void* MemoryAllocator::kmalloc(size_t size)
{
    8000495c:	ff010113          	addi	sp,sp,-16
    80004960:	00113423          	sd	ra,8(sp)
    80004964:	00813023          	sd	s0,0(sp)
    80004968:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_alloc(size);
    8000496c:	00000097          	auipc	ra,0x0
    80004970:	e20080e7          	jalr	-480(ra) # 8000478c <_ZN15MemoryAllocator9mem_allocEm>
}
    80004974:	00813083          	ld	ra,8(sp)
    80004978:	00013403          	ld	s0,0(sp)
    8000497c:	01010113          	addi	sp,sp,16
    80004980:	00008067          	ret

0000000080004984 <_ZN15MemoryAllocator15memAllocHandlerEv>:
{
    80004984:	ff010113          	addi	sp,sp,-16
    80004988:	00113423          	sd	ra,8(sp)
    8000498c:	00813023          	sd	s0,0(sp)
    80004990:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(size));
    80004994:	00058513          	mv	a0,a1
    void* allocatedAddr = kmalloc(size);
    80004998:	00651513          	slli	a0,a0,0x6
    8000499c:	00000097          	auipc	ra,0x0
    800049a0:	fc0080e7          	jalr	-64(ra) # 8000495c <_ZN15MemoryAllocator7kmallocEm>
    __asm__ volatile("mv a0,%0" : : "r"((uint64)allocatedAddr));
    800049a4:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    800049a8:	00000097          	auipc	ra,0x0
    800049ac:	844080e7          	jalr	-1980(ra) # 800041ec <_ZN5Riscv13w_a0_sscratchEv>
}
    800049b0:	00813083          	ld	ra,8(sp)
    800049b4:	00013403          	ld	s0,0(sp)
    800049b8:	01010113          	addi	sp,sp,16
    800049bc:	00008067          	ret

00000000800049c0 <_ZN15MemoryAllocator5kfreeEPv>:

uint64 MemoryAllocator::kfree(void* p)
{
    800049c0:	ff010113          	addi	sp,sp,-16
    800049c4:	00113423          	sd	ra,8(sp)
    800049c8:	00813023          	sd	s0,0(sp)
    800049cc:	01010413          	addi	s0,sp,16
    return MemoryAllocator::mem_free(p);
    800049d0:	00000097          	auipc	ra,0x0
    800049d4:	f64080e7          	jalr	-156(ra) # 80004934 <_ZN15MemoryAllocator8mem_freeEPv>
    800049d8:	00813083          	ld	ra,8(sp)
    800049dc:	00013403          	ld	s0,0(sp)
    800049e0:	01010113          	addi	sp,sp,16
    800049e4:	00008067          	ret

00000000800049e8 <_ZN15MemoryAllocator14memFreeHandlerEv>:
{
    800049e8:	ff010113          	addi	sp,sp,-16
    800049ec:	00113423          	sd	ra,8(sp)
    800049f0:	00813023          	sd	s0,0(sp)
    800049f4:	01010413          	addi	s0,sp,16
    __asm__ volatile("mv %0, a1" : "=r"(addr));
    800049f8:	00058513          	mv	a0,a1
    uint64 retval = kfree((void*)addr);
    800049fc:	00000097          	auipc	ra,0x0
    80004a00:	fc4080e7          	jalr	-60(ra) # 800049c0 <_ZN15MemoryAllocator5kfreeEPv>
    __asm__ volatile("mv a0,%0" : :"r"(retval));
    80004a04:	00050513          	mv	a0,a0
    Riscv::w_a0_sscratch();
    80004a08:	fffff097          	auipc	ra,0xfffff
    80004a0c:	7e4080e7          	jalr	2020(ra) # 800041ec <_ZN5Riscv13w_a0_sscratchEv>
}
    80004a10:	00813083          	ld	ra,8(sp)
    80004a14:	00013403          	ld	s0,0(sp)
    80004a18:	01010113          	addi	sp,sp,16
    80004a1c:	00008067          	ret

0000000080004a20 <_ZN10KSemaphoreC1Ei>:
#include "../h/KSemaphore.hpp"
#include "../h/MemoryAllocator.hpp"
#include "../h/Riscv.hpp"
#include "../h/Scheduler.hpp"

KSemaphore::KSemaphore(int val)
    80004a20:	ff010113          	addi	sp,sp,-16
    80004a24:	00813423          	sd	s0,8(sp)
    80004a28:	01010413          	addi	s0,sp,16
{
    this->val = val;
    80004a2c:	00b52823          	sw	a1,16(a0)
    headBlocked = tailBlocked = 0;
    80004a30:	00053423          	sd	zero,8(a0)
    80004a34:	00053023          	sd	zero,0(a0)
}
    80004a38:	00813403          	ld	s0,8(sp)
    80004a3c:	01010113          	addi	sp,sp,16
    80004a40:	00008067          	ret

0000000080004a44 <_ZN10KSemaphore12addToBlockedEP3PCB>:
        Scheduler::put(pcb);
    }
}

void KSemaphore::addToBlocked(PCB* pcb)
{
    80004a44:	ff010113          	addi	sp,sp,-16
    80004a48:	00813423          	sd	s0,8(sp)
    80004a4c:	01010413          	addi	s0,sp,16
    pcb->nextPCB = 0;
    80004a50:	0005b423          	sd	zero,8(a1)
    if(headBlocked == 0)
    80004a54:	00053783          	ld	a5,0(a0)
    80004a58:	00078e63          	beqz	a5,80004a74 <_ZN10KSemaphore12addToBlockedEP3PCB+0x30>
    {
        headBlocked = tailBlocked = pcb;
    }
    else
    {
        tailBlocked->nextPCB = pcb;
    80004a5c:	00853783          	ld	a5,8(a0)
    80004a60:	00b7b423          	sd	a1,8(a5)
        tailBlocked = pcb;
    80004a64:	00b53423          	sd	a1,8(a0)
    }
}
    80004a68:	00813403          	ld	s0,8(sp)
    80004a6c:	01010113          	addi	sp,sp,16
    80004a70:	00008067          	ret
        headBlocked = tailBlocked = pcb;
    80004a74:	00b53423          	sd	a1,8(a0)
    80004a78:	00b53023          	sd	a1,0(a0)
    80004a7c:	fedff06f          	j	80004a68 <_ZN10KSemaphore12addToBlockedEP3PCB+0x24>

0000000080004a80 <_ZN10KSemaphore5blockEv>:

void KSemaphore::block()
{
    80004a80:	ff010113          	addi	sp,sp,-16
    80004a84:	00113423          	sd	ra,8(sp)
    80004a88:	00813023          	sd	s0,0(sp)
    80004a8c:	01010413          	addi	s0,sp,16
    PCB::running->setState(PCB::SUSPENDED);
    80004a90:	00006797          	auipc	a5,0x6
    80004a94:	cb07b783          	ld	a5,-848(a5) # 8000a740 <_GLOBAL_OFFSET_TABLE_+0x68>
    80004a98:	0007b583          	ld	a1,0(a5)
    void setState(State s) {state = s;}
    80004a9c:	00200793          	li	a5,2
    80004aa0:	04f5a023          	sw	a5,64(a1)
    addToBlocked(PCB::running);
    80004aa4:	00000097          	auipc	ra,0x0
    80004aa8:	fa0080e7          	jalr	-96(ra) # 80004a44 <_ZN10KSemaphore12addToBlockedEP3PCB>
    PCB::dispatch();
    80004aac:	ffffd097          	auipc	ra,0xffffd
    80004ab0:	7d0080e7          	jalr	2000(ra) # 8000227c <_ZN3PCB8dispatchEv>
}
    80004ab4:	00813083          	ld	ra,8(sp)
    80004ab8:	00013403          	ld	s0,0(sp)
    80004abc:	01010113          	addi	sp,sp,16
    80004ac0:	00008067          	ret

0000000080004ac4 <_ZN10KSemaphore4waitEv>:
    PCB::running->retFromClosedSem = false;
    80004ac4:	00006797          	auipc	a5,0x6
    80004ac8:	c7c7b783          	ld	a5,-900(a5) # 8000a740 <_GLOBAL_OFFSET_TABLE_+0x68>
    80004acc:	0007b783          	ld	a5,0(a5)
    80004ad0:	04078c23          	sb	zero,88(a5)
    if(--val < 0)
    80004ad4:	01052783          	lw	a5,16(a0)
    80004ad8:	fff7879b          	addiw	a5,a5,-1
    80004adc:	00f52823          	sw	a5,16(a0)
    80004ae0:	02079713          	slli	a4,a5,0x20
    80004ae4:	00074663          	bltz	a4,80004af0 <_ZN10KSemaphore4waitEv+0x2c>
}
    80004ae8:	00000513          	li	a0,0
    80004aec:	00008067          	ret
{
    80004af0:	ff010113          	addi	sp,sp,-16
    80004af4:	00113423          	sd	ra,8(sp)
    80004af8:	00813023          	sd	s0,0(sp)
    80004afc:	01010413          	addi	s0,sp,16
        block();
    80004b00:	00000097          	auipc	ra,0x0
    80004b04:	f80080e7          	jalr	-128(ra) # 80004a80 <_ZN10KSemaphore5blockEv>
}
    80004b08:	00000513          	li	a0,0
    80004b0c:	00813083          	ld	ra,8(sp)
    80004b10:	00013403          	ld	s0,0(sp)
    80004b14:	01010113          	addi	sp,sp,16
    80004b18:	00008067          	ret

0000000080004b1c <_ZN10KSemaphore15getFirstBlockedEv>:

PCB* KSemaphore::getFirstBlocked()
{
    80004b1c:	ff010113          	addi	sp,sp,-16
    80004b20:	00813423          	sd	s0,8(sp)
    80004b24:	01010413          	addi	s0,sp,16
   return headBlocked;
}
    80004b28:	00053503          	ld	a0,0(a0)
    80004b2c:	00813403          	ld	s0,8(sp)
    80004b30:	01010113          	addi	sp,sp,16
    80004b34:	00008067          	ret

0000000080004b38 <_ZN10KSemaphore18removeFirstBlockedEv>:

void KSemaphore::removeFirstBlocked()
{
    80004b38:	ff010113          	addi	sp,sp,-16
    80004b3c:	00813423          	sd	s0,8(sp)
    80004b40:	01010413          	addi	s0,sp,16
    if(headBlocked == 0)
    80004b44:	00053783          	ld	a5,0(a0)
    80004b48:	00078c63          	beqz	a5,80004b60 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>
        return;
    PCB* first = headBlocked;
    headBlocked = headBlocked->nextPCB;
    80004b4c:	0087b703          	ld	a4,8(a5)
    80004b50:	00e53023          	sd	a4,0(a0)
    first->nextPCB = 0;
    80004b54:	0007b423          	sd	zero,8(a5)
    if(headBlocked == 0)
    80004b58:	00053783          	ld	a5,0(a0)
    80004b5c:	00078863          	beqz	a5,80004b6c <_ZN10KSemaphore18removeFirstBlockedEv+0x34>
        tailBlocked =0;
}
    80004b60:	00813403          	ld	s0,8(sp)
    80004b64:	01010113          	addi	sp,sp,16
    80004b68:	00008067          	ret
        tailBlocked =0;
    80004b6c:	00053423          	sd	zero,8(a0)
    80004b70:	ff1ff06f          	j	80004b60 <_ZN10KSemaphore18removeFirstBlockedEv+0x28>

0000000080004b74 <_ZN10KSemaphoreD1Ev>:
KSemaphore::~KSemaphore()
    80004b74:	fe010113          	addi	sp,sp,-32
    80004b78:	00113c23          	sd	ra,24(sp)
    80004b7c:	00813823          	sd	s0,16(sp)
    80004b80:	00913423          	sd	s1,8(sp)
    80004b84:	01213023          	sd	s2,0(sp)
    80004b88:	02010413          	addi	s0,sp,32
    80004b8c:	00050913          	mv	s2,a0
    while(getFirstBlocked() != 0)
    80004b90:	00090513          	mv	a0,s2
    80004b94:	00000097          	auipc	ra,0x0
    80004b98:	f88080e7          	jalr	-120(ra) # 80004b1c <_ZN10KSemaphore15getFirstBlockedEv>
    80004b9c:	00050493          	mv	s1,a0
    80004ba0:	02050463          	beqz	a0,80004bc8 <_ZN10KSemaphoreD1Ev+0x54>
        removeFirstBlocked();
    80004ba4:	00090513          	mv	a0,s2
    80004ba8:	00000097          	auipc	ra,0x0
    80004bac:	f90080e7          	jalr	-112(ra) # 80004b38 <_ZN10KSemaphore18removeFirstBlockedEv>
        pcb->retFromClosedSem = true;
    80004bb0:	00100793          	li	a5,1
    80004bb4:	04f48c23          	sb	a5,88(s1)
        Scheduler::put(pcb);
    80004bb8:	00048513          	mv	a0,s1
    80004bbc:	fffff097          	auipc	ra,0xfffff
    80004bc0:	b70080e7          	jalr	-1168(ra) # 8000372c <_ZN9Scheduler3putEP3PCB>
    while(getFirstBlocked() != 0)
    80004bc4:	fcdff06f          	j	80004b90 <_ZN10KSemaphoreD1Ev+0x1c>
}
    80004bc8:	01813083          	ld	ra,24(sp)
    80004bcc:	01013403          	ld	s0,16(sp)
    80004bd0:	00813483          	ld	s1,8(sp)
    80004bd4:	00013903          	ld	s2,0(sp)
    80004bd8:	02010113          	addi	sp,sp,32
    80004bdc:	00008067          	ret

0000000080004be0 <_ZN10KSemaphore7unblockEv>:

void KSemaphore::unblock() {
    80004be0:	fe010113          	addi	sp,sp,-32
    80004be4:	00113c23          	sd	ra,24(sp)
    80004be8:	00813823          	sd	s0,16(sp)
    80004bec:	00913423          	sd	s1,8(sp)
    80004bf0:	01213023          	sd	s2,0(sp)
    80004bf4:	02010413          	addi	s0,sp,32
    80004bf8:	00050913          	mv	s2,a0
    PCB* fr = getFirstBlocked();
    80004bfc:	00000097          	auipc	ra,0x0
    80004c00:	f20080e7          	jalr	-224(ra) # 80004b1c <_ZN10KSemaphore15getFirstBlockedEv>
    80004c04:	00050493          	mv	s1,a0
    removeFirstBlocked();
    80004c08:	00090513          	mv	a0,s2
    80004c0c:	00000097          	auipc	ra,0x0
    80004c10:	f2c080e7          	jalr	-212(ra) # 80004b38 <_ZN10KSemaphore18removeFirstBlockedEv>
    if(fr != 0)
    80004c14:	00048863          	beqz	s1,80004c24 <_ZN10KSemaphore7unblockEv+0x44>
    {
        Scheduler::put(fr);
    80004c18:	00048513          	mv	a0,s1
    80004c1c:	fffff097          	auipc	ra,0xfffff
    80004c20:	b10080e7          	jalr	-1264(ra) # 8000372c <_ZN9Scheduler3putEP3PCB>
    }
}
    80004c24:	01813083          	ld	ra,24(sp)
    80004c28:	01013403          	ld	s0,16(sp)
    80004c2c:	00813483          	ld	s1,8(sp)
    80004c30:	00013903          	ld	s2,0(sp)
    80004c34:	02010113          	addi	sp,sp,32
    80004c38:	00008067          	ret

0000000080004c3c <_ZN10KSemaphore6signalEv>:
    if(++val <= 0)
    80004c3c:	01052783          	lw	a5,16(a0)
    80004c40:	0017879b          	addiw	a5,a5,1
    80004c44:	0007871b          	sext.w	a4,a5
    80004c48:	00f52823          	sw	a5,16(a0)
    80004c4c:	00e05663          	blez	a4,80004c58 <_ZN10KSemaphore6signalEv+0x1c>
}
    80004c50:	00000513          	li	a0,0
    80004c54:	00008067          	ret
uint64 KSemaphore::signal() {
    80004c58:	ff010113          	addi	sp,sp,-16
    80004c5c:	00113423          	sd	ra,8(sp)
    80004c60:	00813023          	sd	s0,0(sp)
    80004c64:	01010413          	addi	s0,sp,16
        unblock();
    80004c68:	00000097          	auipc	ra,0x0
    80004c6c:	f78080e7          	jalr	-136(ra) # 80004be0 <_ZN10KSemaphore7unblockEv>
}
    80004c70:	00000513          	li	a0,0
    80004c74:	00813083          	ld	ra,8(sp)
    80004c78:	00013403          	ld	s0,0(sp)
    80004c7c:	01010113          	addi	sp,sp,16
    80004c80:	00008067          	ret

0000000080004c84 <_ZN10KSemaphorenwEm>:
void *KSemaphore::operator new(size_t size) {
    80004c84:	ff010113          	addi	sp,sp,-16
    80004c88:	00113423          	sd	ra,8(sp)
    80004c8c:	00813023          	sd	s0,0(sp)
    80004c90:	01010413          	addi	s0,sp,16
    return MemoryAllocator::kmalloc(size);
    80004c94:	00000097          	auipc	ra,0x0
    80004c98:	cc8080e7          	jalr	-824(ra) # 8000495c <_ZN15MemoryAllocator7kmallocEm>
}
    80004c9c:	00813083          	ld	ra,8(sp)
    80004ca0:	00013403          	ld	s0,0(sp)
    80004ca4:	01010113          	addi	sp,sp,16
    80004ca8:	00008067          	ret

0000000080004cac <_ZN10KSemaphore14semOpenHandlerEv>:
{
    80004cac:	fd010113          	addi	sp,sp,-48
    80004cb0:	02113423          	sd	ra,40(sp)
    80004cb4:	02813023          	sd	s0,32(sp)
    80004cb8:	00913c23          	sd	s1,24(sp)
    80004cbc:	01213823          	sd	s2,16(sp)
    80004cc0:	01313423          	sd	s3,8(sp)
    80004cc4:	03010413          	addi	s0,sp,48
    __asm__ volatile("mv %0, a1" : "=r"(semaphoreHandle));
    80004cc8:	00058913          	mv	s2,a1
    __asm__ volatile("mv %0, a2" : "=r"(val));
    80004ccc:	00060993          	mv	s3,a2
    KSemaphore* newSem = new KSemaphore(val);
    80004cd0:	01800513          	li	a0,24
    80004cd4:	00000097          	auipc	ra,0x0
    80004cd8:	fb0080e7          	jalr	-80(ra) # 80004c84 <_ZN10KSemaphorenwEm>
    80004cdc:	00050493          	mv	s1,a0
    80004ce0:	0009859b          	sext.w	a1,s3
    80004ce4:	00000097          	auipc	ra,0x0
    80004ce8:	d3c080e7          	jalr	-708(ra) # 80004a20 <_ZN10KSemaphoreC1Ei>
    (*semaphoreHandle) = newSem;
    80004cec:	00993023          	sd	s1,0(s2)
    if(newSem == 0)
    80004cf0:	02048663          	beqz	s1,80004d1c <_ZN10KSemaphore14semOpenHandlerEv+0x70>
            __asm__ volatile("li a0, 0");
    80004cf4:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80004cf8:	fffff097          	auipc	ra,0xfffff
    80004cfc:	4f4080e7          	jalr	1268(ra) # 800041ec <_ZN5Riscv13w_a0_sscratchEv>
}
    80004d00:	02813083          	ld	ra,40(sp)
    80004d04:	02013403          	ld	s0,32(sp)
    80004d08:	01813483          	ld	s1,24(sp)
    80004d0c:	01013903          	ld	s2,16(sp)
    80004d10:	00813983          	ld	s3,8(sp)
    80004d14:	03010113          	addi	sp,sp,48
    80004d18:	00008067          	ret
            __asm__ volatile("li a0, 0xffffffffffffffff");
    80004d1c:	fff00513          	li	a0,-1
    80004d20:	fd9ff06f          	j	80004cf8 <_ZN10KSemaphore14semOpenHandlerEv+0x4c>

0000000080004d24 <_ZN10KSemaphoredlEPv>:

void KSemaphore::operator delete(void *p)
{
    80004d24:	ff010113          	addi	sp,sp,-16
    80004d28:	00113423          	sd	ra,8(sp)
    80004d2c:	00813023          	sd	s0,0(sp)
    80004d30:	01010413          	addi	s0,sp,16
    MemoryAllocator::kfree(p);
    80004d34:	00000097          	auipc	ra,0x0
    80004d38:	c8c080e7          	jalr	-884(ra) # 800049c0 <_ZN15MemoryAllocator5kfreeEPv>
}
    80004d3c:	00813083          	ld	ra,8(sp)
    80004d40:	00013403          	ld	s0,0(sp)
    80004d44:	01010113          	addi	sp,sp,16
    80004d48:	00008067          	ret

0000000080004d4c <_ZN10KSemaphore14semWaitHandlerEv>:

void KSemaphore::semWaitHandler()
{
    80004d4c:	ff010113          	addi	sp,sp,-16
    80004d50:	00113423          	sd	ra,8(sp)
    80004d54:	00813023          	sd	s0,0(sp)
    80004d58:	01010413          	addi	s0,sp,16
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80004d5c:	00058513          	mv	a0,a1
    kSem->wait();
    80004d60:	00000097          	auipc	ra,0x0
    80004d64:	d64080e7          	jalr	-668(ra) # 80004ac4 <_ZN10KSemaphore4waitEv>
    if(PCB::running->retFromClosedSem)
    80004d68:	00006797          	auipc	a5,0x6
    80004d6c:	9d87b783          	ld	a5,-1576(a5) # 8000a740 <_GLOBAL_OFFSET_TABLE_+0x68>
    80004d70:	0007b783          	ld	a5,0(a5)
    80004d74:	0587c783          	lbu	a5,88(a5)
    80004d78:	02078063          	beqz	a5,80004d98 <_ZN10KSemaphore14semWaitHandlerEv+0x4c>
        __asm__ volatile("li a0, 0x1");
    80004d7c:	00100513          	li	a0,1
    else
        __asm__ volatile("li a0, 0x0");
    Riscv::w_a0_sscratch();
    80004d80:	fffff097          	auipc	ra,0xfffff
    80004d84:	46c080e7          	jalr	1132(ra) # 800041ec <_ZN5Riscv13w_a0_sscratchEv>
}
    80004d88:	00813083          	ld	ra,8(sp)
    80004d8c:	00013403          	ld	s0,0(sp)
    80004d90:	01010113          	addi	sp,sp,16
    80004d94:	00008067          	ret
        __asm__ volatile("li a0, 0x0");
    80004d98:	00000513          	li	a0,0
    80004d9c:	fe5ff06f          	j	80004d80 <_ZN10KSemaphore14semWaitHandlerEv+0x34>

0000000080004da0 <_ZN10KSemaphore16semSignalHandlerEv>:

void KSemaphore::semSignalHandler() {
    80004da0:	ff010113          	addi	sp,sp,-16
    80004da4:	00113423          	sd	ra,8(sp)
    80004da8:	00813023          	sd	s0,0(sp)
    80004dac:	01010413          	addi	s0,sp,16
    KSemaphore *kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80004db0:	00058513          	mv	a0,a1
    if (kSem == 0)
    80004db4:	02050463          	beqz	a0,80004ddc <_ZN10KSemaphore16semSignalHandlerEv+0x3c>
    {
        __asm__ volatile("li a0, 0x1");
    }
    else
    {
        kSem->signal();
    80004db8:	00000097          	auipc	ra,0x0
    80004dbc:	e84080e7          	jalr	-380(ra) # 80004c3c <_ZN10KSemaphore6signalEv>
        __asm__ volatile("li a0, 0x0");
    80004dc0:	00000513          	li	a0,0
    }
    Riscv::w_a0_sscratch();
    80004dc4:	fffff097          	auipc	ra,0xfffff
    80004dc8:	428080e7          	jalr	1064(ra) # 800041ec <_ZN5Riscv13w_a0_sscratchEv>
}
    80004dcc:	00813083          	ld	ra,8(sp)
    80004dd0:	00013403          	ld	s0,0(sp)
    80004dd4:	01010113          	addi	sp,sp,16
    80004dd8:	00008067          	ret
        __asm__ volatile("li a0, 0x1");
    80004ddc:	00100513          	li	a0,1
    80004de0:	fe5ff06f          	j	80004dc4 <_ZN10KSemaphore16semSignalHandlerEv+0x24>

0000000080004de4 <_ZN10KSemaphore15semCloseHandlerEv>:

void KSemaphore::semCloseHandler()
{
    80004de4:	fe010113          	addi	sp,sp,-32
    80004de8:	00113c23          	sd	ra,24(sp)
    80004dec:	00813823          	sd	s0,16(sp)
    80004df0:	00913423          	sd	s1,8(sp)
    80004df4:	02010413          	addi	s0,sp,32
    KSemaphore* kSem;
    __asm__ volatile("mv %0, a1" : "=r"(kSem));
    80004df8:	00058493          	mv	s1,a1
    delete kSem;
    80004dfc:	00048e63          	beqz	s1,80004e18 <_ZN10KSemaphore15semCloseHandlerEv+0x34>
    80004e00:	00048513          	mv	a0,s1
    80004e04:	00000097          	auipc	ra,0x0
    80004e08:	d70080e7          	jalr	-656(ra) # 80004b74 <_ZN10KSemaphoreD1Ev>
    80004e0c:	00048513          	mv	a0,s1
    80004e10:	00000097          	auipc	ra,0x0
    80004e14:	f14080e7          	jalr	-236(ra) # 80004d24 <_ZN10KSemaphoredlEPv>
    __asm__ volatile("li a0, 0");
    80004e18:	00000513          	li	a0,0
    Riscv::w_a0_sscratch();
    80004e1c:	fffff097          	auipc	ra,0xfffff
    80004e20:	3d0080e7          	jalr	976(ra) # 800041ec <_ZN5Riscv13w_a0_sscratchEv>
}
    80004e24:	01813083          	ld	ra,24(sp)
    80004e28:	01013403          	ld	s0,16(sp)
    80004e2c:	00813483          	ld	s1,8(sp)
    80004e30:	02010113          	addi	sp,sp,32
    80004e34:	00008067          	ret

0000000080004e38 <_Z11printStringPKc>:

#define LOCK() while(copy_and_swap(lockPrint, 0, 1))
#define UNLOCK() while(copy_and_swap(lockPrint, 1, 0))

void printString(char const *string)
{
    80004e38:	fe010113          	addi	sp,sp,-32
    80004e3c:	00113c23          	sd	ra,24(sp)
    80004e40:	00813823          	sd	s0,16(sp)
    80004e44:	00913423          	sd	s1,8(sp)
    80004e48:	02010413          	addi	s0,sp,32
    80004e4c:	00050493          	mv	s1,a0
    LOCK();
    80004e50:	00100613          	li	a2,1
    80004e54:	00000593          	li	a1,0
    80004e58:	0000a517          	auipc	a0,0xa
    80004e5c:	9f850513          	addi	a0,a0,-1544 # 8000e850 <lockPrint>
    80004e60:	ffffc097          	auipc	ra,0xffffc
    80004e64:	3b8080e7          	jalr	952(ra) # 80001218 <copy_and_swap>
    80004e68:	fe0514e3          	bnez	a0,80004e50 <_Z11printStringPKc+0x18>
    while (*string != '\0')
    80004e6c:	0004c503          	lbu	a0,0(s1)
    80004e70:	00050a63          	beqz	a0,80004e84 <_Z11printStringPKc+0x4c>
    {
        putc(*string);
    80004e74:	ffffd097          	auipc	ra,0xffffd
    80004e78:	2ac080e7          	jalr	684(ra) # 80002120 <_Z4putcc>
        string++;
    80004e7c:	00148493          	addi	s1,s1,1
    while (*string != '\0')
    80004e80:	fedff06f          	j	80004e6c <_Z11printStringPKc+0x34>
    }
    UNLOCK();
    80004e84:	00000613          	li	a2,0
    80004e88:	00100593          	li	a1,1
    80004e8c:	0000a517          	auipc	a0,0xa
    80004e90:	9c450513          	addi	a0,a0,-1596 # 8000e850 <lockPrint>
    80004e94:	ffffc097          	auipc	ra,0xffffc
    80004e98:	384080e7          	jalr	900(ra) # 80001218 <copy_and_swap>
    80004e9c:	fe0514e3          	bnez	a0,80004e84 <_Z11printStringPKc+0x4c>
}
    80004ea0:	01813083          	ld	ra,24(sp)
    80004ea4:	01013403          	ld	s0,16(sp)
    80004ea8:	00813483          	ld	s1,8(sp)
    80004eac:	02010113          	addi	sp,sp,32
    80004eb0:	00008067          	ret

0000000080004eb4 <_Z9getStringPci>:

char* getString(char *buf, int max) {
    80004eb4:	fd010113          	addi	sp,sp,-48
    80004eb8:	02113423          	sd	ra,40(sp)
    80004ebc:	02813023          	sd	s0,32(sp)
    80004ec0:	00913c23          	sd	s1,24(sp)
    80004ec4:	01213823          	sd	s2,16(sp)
    80004ec8:	01313423          	sd	s3,8(sp)
    80004ecc:	01413023          	sd	s4,0(sp)
    80004ed0:	03010413          	addi	s0,sp,48
    80004ed4:	00050993          	mv	s3,a0
    80004ed8:	00058a13          	mv	s4,a1
    LOCK();
    80004edc:	00100613          	li	a2,1
    80004ee0:	00000593          	li	a1,0
    80004ee4:	0000a517          	auipc	a0,0xa
    80004ee8:	96c50513          	addi	a0,a0,-1684 # 8000e850 <lockPrint>
    80004eec:	ffffc097          	auipc	ra,0xffffc
    80004ef0:	32c080e7          	jalr	812(ra) # 80001218 <copy_and_swap>
    80004ef4:	fe0514e3          	bnez	a0,80004edc <_Z9getStringPci+0x28>
    int i, cc;
    char c;

    for(i=0; i+1 < max; ){
    80004ef8:	00000913          	li	s2,0
    80004efc:	00090493          	mv	s1,s2
    80004f00:	0019091b          	addiw	s2,s2,1
    80004f04:	03495a63          	bge	s2,s4,80004f38 <_Z9getStringPci+0x84>
        cc = getc();
    80004f08:	ffffd097          	auipc	ra,0xffffd
    80004f0c:	1f0080e7          	jalr	496(ra) # 800020f8 <_Z4getcv>
        if(cc < 1)
    80004f10:	02050463          	beqz	a0,80004f38 <_Z9getStringPci+0x84>
            break;
        c = cc;
        buf[i++] = c;
    80004f14:	009984b3          	add	s1,s3,s1
    80004f18:	00a48023          	sb	a0,0(s1)
        if(c == '\n' || c == '\r')
    80004f1c:	00a00793          	li	a5,10
    80004f20:	00f50a63          	beq	a0,a5,80004f34 <_Z9getStringPci+0x80>
    80004f24:	00d00793          	li	a5,13
    80004f28:	fcf51ae3          	bne	a0,a5,80004efc <_Z9getStringPci+0x48>
        buf[i++] = c;
    80004f2c:	00090493          	mv	s1,s2
    80004f30:	0080006f          	j	80004f38 <_Z9getStringPci+0x84>
    80004f34:	00090493          	mv	s1,s2
            break;
    }
    buf[i] = '\0';
    80004f38:	009984b3          	add	s1,s3,s1
    80004f3c:	00048023          	sb	zero,0(s1)

    UNLOCK();
    80004f40:	00000613          	li	a2,0
    80004f44:	00100593          	li	a1,1
    80004f48:	0000a517          	auipc	a0,0xa
    80004f4c:	90850513          	addi	a0,a0,-1784 # 8000e850 <lockPrint>
    80004f50:	ffffc097          	auipc	ra,0xffffc
    80004f54:	2c8080e7          	jalr	712(ra) # 80001218 <copy_and_swap>
    80004f58:	fe0514e3          	bnez	a0,80004f40 <_Z9getStringPci+0x8c>
    return buf;
}
    80004f5c:	00098513          	mv	a0,s3
    80004f60:	02813083          	ld	ra,40(sp)
    80004f64:	02013403          	ld	s0,32(sp)
    80004f68:	01813483          	ld	s1,24(sp)
    80004f6c:	01013903          	ld	s2,16(sp)
    80004f70:	00813983          	ld	s3,8(sp)
    80004f74:	00013a03          	ld	s4,0(sp)
    80004f78:	03010113          	addi	sp,sp,48
    80004f7c:	00008067          	ret

0000000080004f80 <_Z11stringToIntPKc>:

int stringToInt(const char *s) {
    80004f80:	ff010113          	addi	sp,sp,-16
    80004f84:	00813423          	sd	s0,8(sp)
    80004f88:	01010413          	addi	s0,sp,16
    80004f8c:	00050693          	mv	a3,a0
    int n;

    n = 0;
    80004f90:	00000513          	li	a0,0
    while ('0' <= *s && *s <= '9')
    80004f94:	0006c603          	lbu	a2,0(a3)
    80004f98:	fd06071b          	addiw	a4,a2,-48
    80004f9c:	0ff77713          	andi	a4,a4,255
    80004fa0:	00900793          	li	a5,9
    80004fa4:	02e7e063          	bltu	a5,a4,80004fc4 <_Z11stringToIntPKc+0x44>
        n = n * 10 + *s++ - '0';
    80004fa8:	0025179b          	slliw	a5,a0,0x2
    80004fac:	00a787bb          	addw	a5,a5,a0
    80004fb0:	0017979b          	slliw	a5,a5,0x1
    80004fb4:	00168693          	addi	a3,a3,1
    80004fb8:	00c787bb          	addw	a5,a5,a2
    80004fbc:	fd07851b          	addiw	a0,a5,-48
    while ('0' <= *s && *s <= '9')
    80004fc0:	fd5ff06f          	j	80004f94 <_Z11stringToIntPKc+0x14>
    return n;
}
    80004fc4:	00813403          	ld	s0,8(sp)
    80004fc8:	01010113          	addi	sp,sp,16
    80004fcc:	00008067          	ret

0000000080004fd0 <_Z8printIntiii>:

char digits[] = "0123456789ABCDEF";

void printInt(int xx, int base, int sgn)
{
    80004fd0:	fc010113          	addi	sp,sp,-64
    80004fd4:	02113c23          	sd	ra,56(sp)
    80004fd8:	02813823          	sd	s0,48(sp)
    80004fdc:	02913423          	sd	s1,40(sp)
    80004fe0:	03213023          	sd	s2,32(sp)
    80004fe4:	01313c23          	sd	s3,24(sp)
    80004fe8:	04010413          	addi	s0,sp,64
    80004fec:	00050493          	mv	s1,a0
    80004ff0:	00058913          	mv	s2,a1
    80004ff4:	00060993          	mv	s3,a2
    LOCK();
    80004ff8:	00100613          	li	a2,1
    80004ffc:	00000593          	li	a1,0
    80005000:	0000a517          	auipc	a0,0xa
    80005004:	85050513          	addi	a0,a0,-1968 # 8000e850 <lockPrint>
    80005008:	ffffc097          	auipc	ra,0xffffc
    8000500c:	210080e7          	jalr	528(ra) # 80001218 <copy_and_swap>
    80005010:	fe0514e3          	bnez	a0,80004ff8 <_Z8printIntiii+0x28>
    char buf[16];
    int i, neg;
    uint x;

    neg = 0;
    if(sgn && xx < 0){
    80005014:	00098463          	beqz	s3,8000501c <_Z8printIntiii+0x4c>
    80005018:	0804c463          	bltz	s1,800050a0 <_Z8printIntiii+0xd0>
        neg = 1;
        x = -xx;
    } else {
        x = xx;
    8000501c:	0004851b          	sext.w	a0,s1
    neg = 0;
    80005020:	00000593          	li	a1,0
    }

    i = 0;
    80005024:	00000493          	li	s1,0
    do{
        buf[i++] = digits[x % base];
    80005028:	0009079b          	sext.w	a5,s2
    8000502c:	0325773b          	remuw	a4,a0,s2
    80005030:	00048613          	mv	a2,s1
    80005034:	0014849b          	addiw	s1,s1,1
    80005038:	02071693          	slli	a3,a4,0x20
    8000503c:	0206d693          	srli	a3,a3,0x20
    80005040:	00005717          	auipc	a4,0x5
    80005044:	68070713          	addi	a4,a4,1664 # 8000a6c0 <digits>
    80005048:	00d70733          	add	a4,a4,a3
    8000504c:	00074683          	lbu	a3,0(a4)
    80005050:	fd040713          	addi	a4,s0,-48
    80005054:	00c70733          	add	a4,a4,a2
    80005058:	fed70823          	sb	a3,-16(a4)
    }while((x /= base) != 0);
    8000505c:	0005071b          	sext.w	a4,a0
    80005060:	0325553b          	divuw	a0,a0,s2
    80005064:	fcf772e3          	bgeu	a4,a5,80005028 <_Z8printIntiii+0x58>
    if(neg)
    80005068:	00058c63          	beqz	a1,80005080 <_Z8printIntiii+0xb0>
        buf[i++] = '-';
    8000506c:	fd040793          	addi	a5,s0,-48
    80005070:	009784b3          	add	s1,a5,s1
    80005074:	02d00793          	li	a5,45
    80005078:	fef48823          	sb	a5,-16(s1)
    8000507c:	0026049b          	addiw	s1,a2,2

    while(--i >= 0)
    80005080:	fff4849b          	addiw	s1,s1,-1
    80005084:	0204c463          	bltz	s1,800050ac <_Z8printIntiii+0xdc>
        putc(buf[i]);
    80005088:	fd040793          	addi	a5,s0,-48
    8000508c:	009787b3          	add	a5,a5,s1
    80005090:	ff07c503          	lbu	a0,-16(a5)
    80005094:	ffffd097          	auipc	ra,0xffffd
    80005098:	08c080e7          	jalr	140(ra) # 80002120 <_Z4putcc>
    8000509c:	fe5ff06f          	j	80005080 <_Z8printIntiii+0xb0>
        x = -xx;
    800050a0:	4090053b          	negw	a0,s1
        neg = 1;
    800050a4:	00100593          	li	a1,1
        x = -xx;
    800050a8:	f7dff06f          	j	80005024 <_Z8printIntiii+0x54>

    UNLOCK();
    800050ac:	00000613          	li	a2,0
    800050b0:	00100593          	li	a1,1
    800050b4:	00009517          	auipc	a0,0x9
    800050b8:	79c50513          	addi	a0,a0,1948 # 8000e850 <lockPrint>
    800050bc:	ffffc097          	auipc	ra,0xffffc
    800050c0:	15c080e7          	jalr	348(ra) # 80001218 <copy_and_swap>
    800050c4:	fe0514e3          	bnez	a0,800050ac <_Z8printIntiii+0xdc>
}
    800050c8:	03813083          	ld	ra,56(sp)
    800050cc:	03013403          	ld	s0,48(sp)
    800050d0:	02813483          	ld	s1,40(sp)
    800050d4:	02013903          	ld	s2,32(sp)
    800050d8:	01813983          	ld	s3,24(sp)
    800050dc:	04010113          	addi	sp,sp,64
    800050e0:	00008067          	ret

00000000800050e4 <_ZN9BufferCPPC1Ei>:
#include "buffer_CPP_API.hpp"
#include "printing.hpp"

BufferCPP::BufferCPP(int _cap) : cap(_cap + 1), head(0), tail(0) {
    800050e4:	fd010113          	addi	sp,sp,-48
    800050e8:	02113423          	sd	ra,40(sp)
    800050ec:	02813023          	sd	s0,32(sp)
    800050f0:	00913c23          	sd	s1,24(sp)
    800050f4:	01213823          	sd	s2,16(sp)
    800050f8:	01313423          	sd	s3,8(sp)
    800050fc:	03010413          	addi	s0,sp,48
    80005100:	00050493          	mv	s1,a0
    80005104:	00058913          	mv	s2,a1
    80005108:	0015879b          	addiw	a5,a1,1
    8000510c:	0007851b          	sext.w	a0,a5
    80005110:	00f4a023          	sw	a5,0(s1)
    80005114:	0004a823          	sw	zero,16(s1)
    80005118:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    8000511c:	00251513          	slli	a0,a0,0x2
    80005120:	ffffd097          	auipc	ra,0xffffd
    80005124:	d20080e7          	jalr	-736(ra) # 80001e40 <_Z9mem_allocm>
    80005128:	00a4b423          	sd	a0,8(s1)
    itemAvailable = new Semaphore(0);
    8000512c:	01000513          	li	a0,16
    80005130:	fffff097          	auipc	ra,0xfffff
    80005134:	a80080e7          	jalr	-1408(ra) # 80003bb0 <_Znwm>
    80005138:	00050993          	mv	s3,a0
    8000513c:	00000593          	li	a1,0
    80005140:	fffff097          	auipc	ra,0xfffff
    80005144:	cc4080e7          	jalr	-828(ra) # 80003e04 <_ZN9SemaphoreC1Ej>
    80005148:	0334b023          	sd	s3,32(s1)
    spaceAvailable = new Semaphore(_cap);
    8000514c:	01000513          	li	a0,16
    80005150:	fffff097          	auipc	ra,0xfffff
    80005154:	a60080e7          	jalr	-1440(ra) # 80003bb0 <_Znwm>
    80005158:	00050993          	mv	s3,a0
    8000515c:	00090593          	mv	a1,s2
    80005160:	fffff097          	auipc	ra,0xfffff
    80005164:	ca4080e7          	jalr	-860(ra) # 80003e04 <_ZN9SemaphoreC1Ej>
    80005168:	0134bc23          	sd	s3,24(s1)
    mutexHead = new Semaphore(1);
    8000516c:	01000513          	li	a0,16
    80005170:	fffff097          	auipc	ra,0xfffff
    80005174:	a40080e7          	jalr	-1472(ra) # 80003bb0 <_Znwm>
    80005178:	00050913          	mv	s2,a0
    8000517c:	00100593          	li	a1,1
    80005180:	fffff097          	auipc	ra,0xfffff
    80005184:	c84080e7          	jalr	-892(ra) # 80003e04 <_ZN9SemaphoreC1Ej>
    80005188:	0324b423          	sd	s2,40(s1)
    mutexTail = new Semaphore(1);
    8000518c:	01000513          	li	a0,16
    80005190:	fffff097          	auipc	ra,0xfffff
    80005194:	a20080e7          	jalr	-1504(ra) # 80003bb0 <_Znwm>
    80005198:	00050913          	mv	s2,a0
    8000519c:	00100593          	li	a1,1
    800051a0:	fffff097          	auipc	ra,0xfffff
    800051a4:	c64080e7          	jalr	-924(ra) # 80003e04 <_ZN9SemaphoreC1Ej>
    800051a8:	0324b823          	sd	s2,48(s1)
}
    800051ac:	02813083          	ld	ra,40(sp)
    800051b0:	02013403          	ld	s0,32(sp)
    800051b4:	01813483          	ld	s1,24(sp)
    800051b8:	01013903          	ld	s2,16(sp)
    800051bc:	00813983          	ld	s3,8(sp)
    800051c0:	03010113          	addi	sp,sp,48
    800051c4:	00008067          	ret
    800051c8:	00050493          	mv	s1,a0
    itemAvailable = new Semaphore(0);
    800051cc:	00098513          	mv	a0,s3
    800051d0:	fffff097          	auipc	ra,0xfffff
    800051d4:	a08080e7          	jalr	-1528(ra) # 80003bd8 <_ZdlPv>
    800051d8:	00048513          	mv	a0,s1
    800051dc:	0000a097          	auipc	ra,0xa
    800051e0:	74c080e7          	jalr	1868(ra) # 8000f928 <_Unwind_Resume>
    800051e4:	00050493          	mv	s1,a0
    spaceAvailable = new Semaphore(_cap);
    800051e8:	00098513          	mv	a0,s3
    800051ec:	fffff097          	auipc	ra,0xfffff
    800051f0:	9ec080e7          	jalr	-1556(ra) # 80003bd8 <_ZdlPv>
    800051f4:	00048513          	mv	a0,s1
    800051f8:	0000a097          	auipc	ra,0xa
    800051fc:	730080e7          	jalr	1840(ra) # 8000f928 <_Unwind_Resume>
    80005200:	00050493          	mv	s1,a0
    mutexHead = new Semaphore(1);
    80005204:	00090513          	mv	a0,s2
    80005208:	fffff097          	auipc	ra,0xfffff
    8000520c:	9d0080e7          	jalr	-1584(ra) # 80003bd8 <_ZdlPv>
    80005210:	00048513          	mv	a0,s1
    80005214:	0000a097          	auipc	ra,0xa
    80005218:	714080e7          	jalr	1812(ra) # 8000f928 <_Unwind_Resume>
    8000521c:	00050493          	mv	s1,a0
    mutexTail = new Semaphore(1);
    80005220:	00090513          	mv	a0,s2
    80005224:	fffff097          	auipc	ra,0xfffff
    80005228:	9b4080e7          	jalr	-1612(ra) # 80003bd8 <_ZdlPv>
    8000522c:	00048513          	mv	a0,s1
    80005230:	0000a097          	auipc	ra,0xa
    80005234:	6f8080e7          	jalr	1784(ra) # 8000f928 <_Unwind_Resume>

0000000080005238 <_ZN9BufferCPP3putEi>:
    delete mutexTail;
    delete mutexHead;

}

void BufferCPP::put(int val) {
    80005238:	fe010113          	addi	sp,sp,-32
    8000523c:	00113c23          	sd	ra,24(sp)
    80005240:	00813823          	sd	s0,16(sp)
    80005244:	00913423          	sd	s1,8(sp)
    80005248:	01213023          	sd	s2,0(sp)
    8000524c:	02010413          	addi	s0,sp,32
    80005250:	00050493          	mv	s1,a0
    80005254:	00058913          	mv	s2,a1
    spaceAvailable->wait();
    80005258:	01853503          	ld	a0,24(a0)
    8000525c:	fffff097          	auipc	ra,0xfffff
    80005260:	b70080e7          	jalr	-1168(ra) # 80003dcc <_ZN9Semaphore4waitEv>

    mutexTail->wait();
    80005264:	0304b503          	ld	a0,48(s1)
    80005268:	fffff097          	auipc	ra,0xfffff
    8000526c:	b64080e7          	jalr	-1180(ra) # 80003dcc <_ZN9Semaphore4waitEv>
    buffer[tail] = val;
    80005270:	0084b783          	ld	a5,8(s1)
    80005274:	0144a703          	lw	a4,20(s1)
    80005278:	00271713          	slli	a4,a4,0x2
    8000527c:	00e787b3          	add	a5,a5,a4
    80005280:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005284:	0144a783          	lw	a5,20(s1)
    80005288:	0017879b          	addiw	a5,a5,1
    8000528c:	0004a703          	lw	a4,0(s1)
    80005290:	02e7e7bb          	remw	a5,a5,a4
    80005294:	00f4aa23          	sw	a5,20(s1)
    mutexTail->signal();
    80005298:	0304b503          	ld	a0,48(s1)
    8000529c:	fffff097          	auipc	ra,0xfffff
    800052a0:	bb4080e7          	jalr	-1100(ra) # 80003e50 <_ZN9Semaphore6signalEv>

    itemAvailable->signal();
    800052a4:	0204b503          	ld	a0,32(s1)
    800052a8:	fffff097          	auipc	ra,0xfffff
    800052ac:	ba8080e7          	jalr	-1112(ra) # 80003e50 <_ZN9Semaphore6signalEv>

}
    800052b0:	01813083          	ld	ra,24(sp)
    800052b4:	01013403          	ld	s0,16(sp)
    800052b8:	00813483          	ld	s1,8(sp)
    800052bc:	00013903          	ld	s2,0(sp)
    800052c0:	02010113          	addi	sp,sp,32
    800052c4:	00008067          	ret

00000000800052c8 <_ZN9BufferCPP3getEv>:

int BufferCPP::get() {
    800052c8:	fe010113          	addi	sp,sp,-32
    800052cc:	00113c23          	sd	ra,24(sp)
    800052d0:	00813823          	sd	s0,16(sp)
    800052d4:	00913423          	sd	s1,8(sp)
    800052d8:	01213023          	sd	s2,0(sp)
    800052dc:	02010413          	addi	s0,sp,32
    800052e0:	00050493          	mv	s1,a0
    itemAvailable->wait();
    800052e4:	02053503          	ld	a0,32(a0)
    800052e8:	fffff097          	auipc	ra,0xfffff
    800052ec:	ae4080e7          	jalr	-1308(ra) # 80003dcc <_ZN9Semaphore4waitEv>

    mutexHead->wait();
    800052f0:	0284b503          	ld	a0,40(s1)
    800052f4:	fffff097          	auipc	ra,0xfffff
    800052f8:	ad8080e7          	jalr	-1320(ra) # 80003dcc <_ZN9Semaphore4waitEv>

    int ret = buffer[head];
    800052fc:	0084b703          	ld	a4,8(s1)
    80005300:	0104a783          	lw	a5,16(s1)
    80005304:	00279693          	slli	a3,a5,0x2
    80005308:	00d70733          	add	a4,a4,a3
    8000530c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005310:	0017879b          	addiw	a5,a5,1
    80005314:	0004a703          	lw	a4,0(s1)
    80005318:	02e7e7bb          	remw	a5,a5,a4
    8000531c:	00f4a823          	sw	a5,16(s1)
    mutexHead->signal();
    80005320:	0284b503          	ld	a0,40(s1)
    80005324:	fffff097          	auipc	ra,0xfffff
    80005328:	b2c080e7          	jalr	-1236(ra) # 80003e50 <_ZN9Semaphore6signalEv>

    spaceAvailable->signal();
    8000532c:	0184b503          	ld	a0,24(s1)
    80005330:	fffff097          	auipc	ra,0xfffff
    80005334:	b20080e7          	jalr	-1248(ra) # 80003e50 <_ZN9Semaphore6signalEv>

    return ret;
}
    80005338:	00090513          	mv	a0,s2
    8000533c:	01813083          	ld	ra,24(sp)
    80005340:	01013403          	ld	s0,16(sp)
    80005344:	00813483          	ld	s1,8(sp)
    80005348:	00013903          	ld	s2,0(sp)
    8000534c:	02010113          	addi	sp,sp,32
    80005350:	00008067          	ret

0000000080005354 <_ZN9BufferCPP6getCntEv>:

int BufferCPP::getCnt() {
    80005354:	fe010113          	addi	sp,sp,-32
    80005358:	00113c23          	sd	ra,24(sp)
    8000535c:	00813823          	sd	s0,16(sp)
    80005360:	00913423          	sd	s1,8(sp)
    80005364:	01213023          	sd	s2,0(sp)
    80005368:	02010413          	addi	s0,sp,32
    8000536c:	00050493          	mv	s1,a0
    int ret;

    mutexHead->wait();
    80005370:	02853503          	ld	a0,40(a0)
    80005374:	fffff097          	auipc	ra,0xfffff
    80005378:	a58080e7          	jalr	-1448(ra) # 80003dcc <_ZN9Semaphore4waitEv>
    mutexTail->wait();
    8000537c:	0304b503          	ld	a0,48(s1)
    80005380:	fffff097          	auipc	ra,0xfffff
    80005384:	a4c080e7          	jalr	-1460(ra) # 80003dcc <_ZN9Semaphore4waitEv>

    if (tail >= head) {
    80005388:	0144a783          	lw	a5,20(s1)
    8000538c:	0104a903          	lw	s2,16(s1)
    80005390:	0327ce63          	blt	a5,s2,800053cc <_ZN9BufferCPP6getCntEv+0x78>
        ret = tail - head;
    80005394:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    mutexTail->signal();
    80005398:	0304b503          	ld	a0,48(s1)
    8000539c:	fffff097          	auipc	ra,0xfffff
    800053a0:	ab4080e7          	jalr	-1356(ra) # 80003e50 <_ZN9Semaphore6signalEv>
    mutexHead->signal();
    800053a4:	0284b503          	ld	a0,40(s1)
    800053a8:	fffff097          	auipc	ra,0xfffff
    800053ac:	aa8080e7          	jalr	-1368(ra) # 80003e50 <_ZN9Semaphore6signalEv>

    return ret;
}
    800053b0:	00090513          	mv	a0,s2
    800053b4:	01813083          	ld	ra,24(sp)
    800053b8:	01013403          	ld	s0,16(sp)
    800053bc:	00813483          	ld	s1,8(sp)
    800053c0:	00013903          	ld	s2,0(sp)
    800053c4:	02010113          	addi	sp,sp,32
    800053c8:	00008067          	ret
        ret = cap - head + tail;
    800053cc:	0004a703          	lw	a4,0(s1)
    800053d0:	4127093b          	subw	s2,a4,s2
    800053d4:	00f9093b          	addw	s2,s2,a5
    800053d8:	fc1ff06f          	j	80005398 <_ZN9BufferCPP6getCntEv+0x44>

00000000800053dc <_ZN9BufferCPPD1Ev>:
BufferCPP::~BufferCPP() {
    800053dc:	fe010113          	addi	sp,sp,-32
    800053e0:	00113c23          	sd	ra,24(sp)
    800053e4:	00813823          	sd	s0,16(sp)
    800053e8:	00913423          	sd	s1,8(sp)
    800053ec:	02010413          	addi	s0,sp,32
    800053f0:	00050493          	mv	s1,a0
    Console::putc('\n');
    800053f4:	00a00513          	li	a0,10
    800053f8:	fffff097          	auipc	ra,0xfffff
    800053fc:	ab8080e7          	jalr	-1352(ra) # 80003eb0 <_ZN7Console4putcEc>
    printString("Buffer deleted!\n");
    80005400:	00003517          	auipc	a0,0x3
    80005404:	fe050513          	addi	a0,a0,-32 # 800083e0 <CONSOLE_STATUS+0x3d0>
    80005408:	00000097          	auipc	ra,0x0
    8000540c:	a30080e7          	jalr	-1488(ra) # 80004e38 <_Z11printStringPKc>
    while (getCnt()) {
    80005410:	00048513          	mv	a0,s1
    80005414:	00000097          	auipc	ra,0x0
    80005418:	f40080e7          	jalr	-192(ra) # 80005354 <_ZN9BufferCPP6getCntEv>
    8000541c:	02050c63          	beqz	a0,80005454 <_ZN9BufferCPPD1Ev+0x78>
        char ch = buffer[head];
    80005420:	0084b783          	ld	a5,8(s1)
    80005424:	0104a703          	lw	a4,16(s1)
    80005428:	00271713          	slli	a4,a4,0x2
    8000542c:	00e787b3          	add	a5,a5,a4
        Console::putc(ch);
    80005430:	0007c503          	lbu	a0,0(a5)
    80005434:	fffff097          	auipc	ra,0xfffff
    80005438:	a7c080e7          	jalr	-1412(ra) # 80003eb0 <_ZN7Console4putcEc>
        head = (head + 1) % cap;
    8000543c:	0104a783          	lw	a5,16(s1)
    80005440:	0017879b          	addiw	a5,a5,1
    80005444:	0004a703          	lw	a4,0(s1)
    80005448:	02e7e7bb          	remw	a5,a5,a4
    8000544c:	00f4a823          	sw	a5,16(s1)
    while (getCnt()) {
    80005450:	fc1ff06f          	j	80005410 <_ZN9BufferCPPD1Ev+0x34>
    Console::putc('!');
    80005454:	02100513          	li	a0,33
    80005458:	fffff097          	auipc	ra,0xfffff
    8000545c:	a58080e7          	jalr	-1448(ra) # 80003eb0 <_ZN7Console4putcEc>
    Console::putc('\n');
    80005460:	00a00513          	li	a0,10
    80005464:	fffff097          	auipc	ra,0xfffff
    80005468:	a4c080e7          	jalr	-1460(ra) # 80003eb0 <_ZN7Console4putcEc>
    mem_free(buffer);
    8000546c:	0084b503          	ld	a0,8(s1)
    80005470:	ffffd097          	auipc	ra,0xffffd
    80005474:	a00080e7          	jalr	-1536(ra) # 80001e70 <_Z8mem_freePv>
    delete itemAvailable;
    80005478:	0204b503          	ld	a0,32(s1)
    8000547c:	00050863          	beqz	a0,8000548c <_ZN9BufferCPPD1Ev+0xb0>
    80005480:	00053783          	ld	a5,0(a0)
    80005484:	0087b783          	ld	a5,8(a5)
    80005488:	000780e7          	jalr	a5
    delete spaceAvailable;
    8000548c:	0184b503          	ld	a0,24(s1)
    80005490:	00050863          	beqz	a0,800054a0 <_ZN9BufferCPPD1Ev+0xc4>
    80005494:	00053783          	ld	a5,0(a0)
    80005498:	0087b783          	ld	a5,8(a5)
    8000549c:	000780e7          	jalr	a5
    delete mutexTail;
    800054a0:	0304b503          	ld	a0,48(s1)
    800054a4:	00050863          	beqz	a0,800054b4 <_ZN9BufferCPPD1Ev+0xd8>
    800054a8:	00053783          	ld	a5,0(a0)
    800054ac:	0087b783          	ld	a5,8(a5)
    800054b0:	000780e7          	jalr	a5
    delete mutexHead;
    800054b4:	0284b503          	ld	a0,40(s1)
    800054b8:	00050863          	beqz	a0,800054c8 <_ZN9BufferCPPD1Ev+0xec>
    800054bc:	00053783          	ld	a5,0(a0)
    800054c0:	0087b783          	ld	a5,8(a5)
    800054c4:	000780e7          	jalr	a5
}
    800054c8:	01813083          	ld	ra,24(sp)
    800054cc:	01013403          	ld	s0,16(sp)
    800054d0:	00813483          	ld	s1,8(sp)
    800054d4:	02010113          	addi	sp,sp,32
    800054d8:	00008067          	ret

00000000800054dc <_Z11workerBodyAPv>:
    if (n == 0 || n == 1) { return n; }
    if (n % 10 == 0) { thread_dispatch(); }
    return fibonacci(n - 1) + fibonacci(n - 2);
}

void workerBodyA(void* arg) {
    800054dc:	fe010113          	addi	sp,sp,-32
    800054e0:	00113c23          	sd	ra,24(sp)
    800054e4:	00813823          	sd	s0,16(sp)
    800054e8:	00913423          	sd	s1,8(sp)
    800054ec:	01213023          	sd	s2,0(sp)
    800054f0:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 10; i++) {
    800054f4:	00000913          	li	s2,0
    800054f8:	0380006f          	j	80005530 <_Z11workerBodyAPv+0x54>
        printString("A: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800054fc:	ffffd097          	auipc	ra,0xffffd
    80005500:	a20080e7          	jalr	-1504(ra) # 80001f1c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    80005504:	00148493          	addi	s1,s1,1
    80005508:	000027b7          	lui	a5,0x2
    8000550c:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    80005510:	0097ee63          	bltu	a5,s1,8000552c <_Z11workerBodyAPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    80005514:	00000713          	li	a4,0
    80005518:	000077b7          	lui	a5,0x7
    8000551c:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    80005520:	fce7eee3          	bltu	a5,a4,800054fc <_Z11workerBodyAPv+0x20>
    80005524:	00170713          	addi	a4,a4,1
    80005528:	ff1ff06f          	j	80005518 <_Z11workerBodyAPv+0x3c>
    for (uint64 i = 0; i < 10; i++) {
    8000552c:	00190913          	addi	s2,s2,1
    80005530:	00900793          	li	a5,9
    80005534:	0527e063          	bltu	a5,s2,80005574 <_Z11workerBodyAPv+0x98>
        printString("A: i="); printInt(i); printString("\n");
    80005538:	00003517          	auipc	a0,0x3
    8000553c:	ec050513          	addi	a0,a0,-320 # 800083f8 <CONSOLE_STATUS+0x3e8>
    80005540:	00000097          	auipc	ra,0x0
    80005544:	8f8080e7          	jalr	-1800(ra) # 80004e38 <_Z11printStringPKc>
    80005548:	00000613          	li	a2,0
    8000554c:	00a00593          	li	a1,10
    80005550:	0009051b          	sext.w	a0,s2
    80005554:	00000097          	auipc	ra,0x0
    80005558:	a7c080e7          	jalr	-1412(ra) # 80004fd0 <_Z8printIntiii>
    8000555c:	00003517          	auipc	a0,0x3
    80005560:	0a450513          	addi	a0,a0,164 # 80008600 <CONSOLE_STATUS+0x5f0>
    80005564:	00000097          	auipc	ra,0x0
    80005568:	8d4080e7          	jalr	-1836(ra) # 80004e38 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    8000556c:	00000493          	li	s1,0
    80005570:	f99ff06f          	j	80005508 <_Z11workerBodyAPv+0x2c>
        }
    }
    printString("A finished!\n");
    80005574:	00003517          	auipc	a0,0x3
    80005578:	e8c50513          	addi	a0,a0,-372 # 80008400 <CONSOLE_STATUS+0x3f0>
    8000557c:	00000097          	auipc	ra,0x0
    80005580:	8bc080e7          	jalr	-1860(ra) # 80004e38 <_Z11printStringPKc>
    finishedA = true;
    80005584:	00100793          	li	a5,1
    80005588:	00009717          	auipc	a4,0x9
    8000558c:	2cf70823          	sb	a5,720(a4) # 8000e858 <finishedA>
}
    80005590:	01813083          	ld	ra,24(sp)
    80005594:	01013403          	ld	s0,16(sp)
    80005598:	00813483          	ld	s1,8(sp)
    8000559c:	00013903          	ld	s2,0(sp)
    800055a0:	02010113          	addi	sp,sp,32
    800055a4:	00008067          	ret

00000000800055a8 <_Z11workerBodyBPv>:

void workerBodyB(void* arg) {
    800055a8:	fe010113          	addi	sp,sp,-32
    800055ac:	00113c23          	sd	ra,24(sp)
    800055b0:	00813823          	sd	s0,16(sp)
    800055b4:	00913423          	sd	s1,8(sp)
    800055b8:	01213023          	sd	s2,0(sp)
    800055bc:	02010413          	addi	s0,sp,32
    for (uint64 i = 0; i < 16; i++) {
    800055c0:	00000913          	li	s2,0
    800055c4:	0380006f          	j	800055fc <_Z11workerBodyBPv+0x54>
        printString("B: i="); printInt(i); printString("\n");
        for (uint64 j = 0; j < 10000; j++) {
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
            thread_dispatch();
    800055c8:	ffffd097          	auipc	ra,0xffffd
    800055cc:	954080e7          	jalr	-1708(ra) # 80001f1c <_Z15thread_dispatchv>
        for (uint64 j = 0; j < 10000; j++) {
    800055d0:	00148493          	addi	s1,s1,1
    800055d4:	000027b7          	lui	a5,0x2
    800055d8:	70f78793          	addi	a5,a5,1807 # 270f <_entry-0x7fffd8f1>
    800055dc:	0097ee63          	bltu	a5,s1,800055f8 <_Z11workerBodyBPv+0x50>
            for (uint64 k = 0; k < 30000; k++) { /* busy wait */ }
    800055e0:	00000713          	li	a4,0
    800055e4:	000077b7          	lui	a5,0x7
    800055e8:	52f78793          	addi	a5,a5,1327 # 752f <_entry-0x7fff8ad1>
    800055ec:	fce7eee3          	bltu	a5,a4,800055c8 <_Z11workerBodyBPv+0x20>
    800055f0:	00170713          	addi	a4,a4,1
    800055f4:	ff1ff06f          	j	800055e4 <_Z11workerBodyBPv+0x3c>
    for (uint64 i = 0; i < 16; i++) {
    800055f8:	00190913          	addi	s2,s2,1
    800055fc:	00f00793          	li	a5,15
    80005600:	0527e063          	bltu	a5,s2,80005640 <_Z11workerBodyBPv+0x98>
        printString("B: i="); printInt(i); printString("\n");
    80005604:	00003517          	auipc	a0,0x3
    80005608:	e0c50513          	addi	a0,a0,-500 # 80008410 <CONSOLE_STATUS+0x400>
    8000560c:	00000097          	auipc	ra,0x0
    80005610:	82c080e7          	jalr	-2004(ra) # 80004e38 <_Z11printStringPKc>
    80005614:	00000613          	li	a2,0
    80005618:	00a00593          	li	a1,10
    8000561c:	0009051b          	sext.w	a0,s2
    80005620:	00000097          	auipc	ra,0x0
    80005624:	9b0080e7          	jalr	-1616(ra) # 80004fd0 <_Z8printIntiii>
    80005628:	00003517          	auipc	a0,0x3
    8000562c:	fd850513          	addi	a0,a0,-40 # 80008600 <CONSOLE_STATUS+0x5f0>
    80005630:	00000097          	auipc	ra,0x0
    80005634:	808080e7          	jalr	-2040(ra) # 80004e38 <_Z11printStringPKc>
        for (uint64 j = 0; j < 10000; j++) {
    80005638:	00000493          	li	s1,0
    8000563c:	f99ff06f          	j	800055d4 <_Z11workerBodyBPv+0x2c>
        }
    }
    thread_dispatch();
    80005640:	ffffd097          	auipc	ra,0xffffd
    80005644:	8dc080e7          	jalr	-1828(ra) # 80001f1c <_Z15thread_dispatchv>
    printString("B finished!\n");
    80005648:	00003517          	auipc	a0,0x3
    8000564c:	dd050513          	addi	a0,a0,-560 # 80008418 <CONSOLE_STATUS+0x408>
    80005650:	fffff097          	auipc	ra,0xfffff
    80005654:	7e8080e7          	jalr	2024(ra) # 80004e38 <_Z11printStringPKc>
    finishedB = true;
    80005658:	00100793          	li	a5,1
    8000565c:	00009717          	auipc	a4,0x9
    80005660:	1ef70ea3          	sb	a5,509(a4) # 8000e859 <finishedB>
}
    80005664:	01813083          	ld	ra,24(sp)
    80005668:	01013403          	ld	s0,16(sp)
    8000566c:	00813483          	ld	s1,8(sp)
    80005670:	00013903          	ld	s2,0(sp)
    80005674:	02010113          	addi	sp,sp,32
    80005678:	00008067          	ret

000000008000567c <_Z9fibonaccim>:
uint64 fibonacci(uint64 n) {
    8000567c:	fe010113          	addi	sp,sp,-32
    80005680:	00113c23          	sd	ra,24(sp)
    80005684:	00813823          	sd	s0,16(sp)
    80005688:	00913423          	sd	s1,8(sp)
    8000568c:	01213023          	sd	s2,0(sp)
    80005690:	02010413          	addi	s0,sp,32
    80005694:	00050493          	mv	s1,a0
    if (n == 0 || n == 1) { return n; }
    80005698:	00100793          	li	a5,1
    8000569c:	02a7f863          	bgeu	a5,a0,800056cc <_Z9fibonaccim+0x50>
    if (n % 10 == 0) { thread_dispatch(); }
    800056a0:	00a00793          	li	a5,10
    800056a4:	02f577b3          	remu	a5,a0,a5
    800056a8:	02078e63          	beqz	a5,800056e4 <_Z9fibonaccim+0x68>
    return fibonacci(n - 1) + fibonacci(n - 2);
    800056ac:	fff48513          	addi	a0,s1,-1
    800056b0:	00000097          	auipc	ra,0x0
    800056b4:	fcc080e7          	jalr	-52(ra) # 8000567c <_Z9fibonaccim>
    800056b8:	00050913          	mv	s2,a0
    800056bc:	ffe48513          	addi	a0,s1,-2
    800056c0:	00000097          	auipc	ra,0x0
    800056c4:	fbc080e7          	jalr	-68(ra) # 8000567c <_Z9fibonaccim>
    800056c8:	00a90533          	add	a0,s2,a0
}
    800056cc:	01813083          	ld	ra,24(sp)
    800056d0:	01013403          	ld	s0,16(sp)
    800056d4:	00813483          	ld	s1,8(sp)
    800056d8:	00013903          	ld	s2,0(sp)
    800056dc:	02010113          	addi	sp,sp,32
    800056e0:	00008067          	ret
    if (n % 10 == 0) { thread_dispatch(); }
    800056e4:	ffffd097          	auipc	ra,0xffffd
    800056e8:	838080e7          	jalr	-1992(ra) # 80001f1c <_Z15thread_dispatchv>
    800056ec:	fc1ff06f          	j	800056ac <_Z9fibonaccim+0x30>

00000000800056f0 <_Z11workerBodyCPv>:

void workerBodyC(void* arg) {
    800056f0:	fe010113          	addi	sp,sp,-32
    800056f4:	00113c23          	sd	ra,24(sp)
    800056f8:	00813823          	sd	s0,16(sp)
    800056fc:	00913423          	sd	s1,8(sp)
    80005700:	01213023          	sd	s2,0(sp)
    80005704:	02010413          	addi	s0,sp,32
    uint8 i = 0;
    80005708:	00000493          	li	s1,0
    8000570c:	0400006f          	j	8000574c <_Z11workerBodyCPv+0x5c>
    for (; i < 3; i++) {
        printString("C: i="); printInt(i); printString("\n");
    80005710:	00003517          	auipc	a0,0x3
    80005714:	d1850513          	addi	a0,a0,-744 # 80008428 <CONSOLE_STATUS+0x418>
    80005718:	fffff097          	auipc	ra,0xfffff
    8000571c:	720080e7          	jalr	1824(ra) # 80004e38 <_Z11printStringPKc>
    80005720:	00000613          	li	a2,0
    80005724:	00a00593          	li	a1,10
    80005728:	00048513          	mv	a0,s1
    8000572c:	00000097          	auipc	ra,0x0
    80005730:	8a4080e7          	jalr	-1884(ra) # 80004fd0 <_Z8printIntiii>
    80005734:	00003517          	auipc	a0,0x3
    80005738:	ecc50513          	addi	a0,a0,-308 # 80008600 <CONSOLE_STATUS+0x5f0>
    8000573c:	fffff097          	auipc	ra,0xfffff
    80005740:	6fc080e7          	jalr	1788(ra) # 80004e38 <_Z11printStringPKc>
    for (; i < 3; i++) {
    80005744:	0014849b          	addiw	s1,s1,1
    80005748:	0ff4f493          	andi	s1,s1,255
    8000574c:	00200793          	li	a5,2
    80005750:	fc97f0e3          	bgeu	a5,s1,80005710 <_Z11workerBodyCPv+0x20>
    }

    printString("C: dispatch\n");
    80005754:	00003517          	auipc	a0,0x3
    80005758:	cdc50513          	addi	a0,a0,-804 # 80008430 <CONSOLE_STATUS+0x420>
    8000575c:	fffff097          	auipc	ra,0xfffff
    80005760:	6dc080e7          	jalr	1756(ra) # 80004e38 <_Z11printStringPKc>
    __asm__ ("li t1, 7");
    80005764:	00700313          	li	t1,7
    thread_dispatch();
    80005768:	ffffc097          	auipc	ra,0xffffc
    8000576c:	7b4080e7          	jalr	1972(ra) # 80001f1c <_Z15thread_dispatchv>

    uint64 t1 = 0;
    __asm__ ("mv %[t1], t1" : [t1] "=r"(t1));
    80005770:	00030913          	mv	s2,t1

    printString("C: t1="); printInt(t1); printString("\n");
    80005774:	00003517          	auipc	a0,0x3
    80005778:	ccc50513          	addi	a0,a0,-820 # 80008440 <CONSOLE_STATUS+0x430>
    8000577c:	fffff097          	auipc	ra,0xfffff
    80005780:	6bc080e7          	jalr	1724(ra) # 80004e38 <_Z11printStringPKc>
    80005784:	00000613          	li	a2,0
    80005788:	00a00593          	li	a1,10
    8000578c:	0009051b          	sext.w	a0,s2
    80005790:	00000097          	auipc	ra,0x0
    80005794:	840080e7          	jalr	-1984(ra) # 80004fd0 <_Z8printIntiii>
    80005798:	00003517          	auipc	a0,0x3
    8000579c:	e6850513          	addi	a0,a0,-408 # 80008600 <CONSOLE_STATUS+0x5f0>
    800057a0:	fffff097          	auipc	ra,0xfffff
    800057a4:	698080e7          	jalr	1688(ra) # 80004e38 <_Z11printStringPKc>

    uint64 result = fibonacci(12);
    800057a8:	00c00513          	li	a0,12
    800057ac:	00000097          	auipc	ra,0x0
    800057b0:	ed0080e7          	jalr	-304(ra) # 8000567c <_Z9fibonaccim>
    800057b4:	00050913          	mv	s2,a0
    printString("C: fibonaci="); printInt(result); printString("\n");
    800057b8:	00003517          	auipc	a0,0x3
    800057bc:	c9050513          	addi	a0,a0,-880 # 80008448 <CONSOLE_STATUS+0x438>
    800057c0:	fffff097          	auipc	ra,0xfffff
    800057c4:	678080e7          	jalr	1656(ra) # 80004e38 <_Z11printStringPKc>
    800057c8:	00000613          	li	a2,0
    800057cc:	00a00593          	li	a1,10
    800057d0:	0009051b          	sext.w	a0,s2
    800057d4:	fffff097          	auipc	ra,0xfffff
    800057d8:	7fc080e7          	jalr	2044(ra) # 80004fd0 <_Z8printIntiii>
    800057dc:	00003517          	auipc	a0,0x3
    800057e0:	e2450513          	addi	a0,a0,-476 # 80008600 <CONSOLE_STATUS+0x5f0>
    800057e4:	fffff097          	auipc	ra,0xfffff
    800057e8:	654080e7          	jalr	1620(ra) # 80004e38 <_Z11printStringPKc>
    800057ec:	0400006f          	j	8000582c <_Z11workerBodyCPv+0x13c>

    for (; i < 6; i++) {
        printString("C: i="); printInt(i); printString("\n");
    800057f0:	00003517          	auipc	a0,0x3
    800057f4:	c3850513          	addi	a0,a0,-968 # 80008428 <CONSOLE_STATUS+0x418>
    800057f8:	fffff097          	auipc	ra,0xfffff
    800057fc:	640080e7          	jalr	1600(ra) # 80004e38 <_Z11printStringPKc>
    80005800:	00000613          	li	a2,0
    80005804:	00a00593          	li	a1,10
    80005808:	00048513          	mv	a0,s1
    8000580c:	fffff097          	auipc	ra,0xfffff
    80005810:	7c4080e7          	jalr	1988(ra) # 80004fd0 <_Z8printIntiii>
    80005814:	00003517          	auipc	a0,0x3
    80005818:	dec50513          	addi	a0,a0,-532 # 80008600 <CONSOLE_STATUS+0x5f0>
    8000581c:	fffff097          	auipc	ra,0xfffff
    80005820:	61c080e7          	jalr	1564(ra) # 80004e38 <_Z11printStringPKc>
    for (; i < 6; i++) {
    80005824:	0014849b          	addiw	s1,s1,1
    80005828:	0ff4f493          	andi	s1,s1,255
    8000582c:	00500793          	li	a5,5
    80005830:	fc97f0e3          	bgeu	a5,s1,800057f0 <_Z11workerBodyCPv+0x100>
    }

    thread_dispatch();
    80005834:	ffffc097          	auipc	ra,0xffffc
    80005838:	6e8080e7          	jalr	1768(ra) # 80001f1c <_Z15thread_dispatchv>
    printString("A finished!\n");
    8000583c:	00003517          	auipc	a0,0x3
    80005840:	bc450513          	addi	a0,a0,-1084 # 80008400 <CONSOLE_STATUS+0x3f0>
    80005844:	fffff097          	auipc	ra,0xfffff
    80005848:	5f4080e7          	jalr	1524(ra) # 80004e38 <_Z11printStringPKc>
    finishedC = true;
    8000584c:	00100793          	li	a5,1
    80005850:	00009717          	auipc	a4,0x9
    80005854:	00f70523          	sb	a5,10(a4) # 8000e85a <finishedC>
}
    80005858:	01813083          	ld	ra,24(sp)
    8000585c:	01013403          	ld	s0,16(sp)
    80005860:	00813483          	ld	s1,8(sp)
    80005864:	00013903          	ld	s2,0(sp)
    80005868:	02010113          	addi	sp,sp,32
    8000586c:	00008067          	ret

0000000080005870 <_Z11workerBodyDPv>:

void workerBodyD(void* arg) {
    80005870:	fe010113          	addi	sp,sp,-32
    80005874:	00113c23          	sd	ra,24(sp)
    80005878:	00813823          	sd	s0,16(sp)
    8000587c:	00913423          	sd	s1,8(sp)
    80005880:	01213023          	sd	s2,0(sp)
    80005884:	02010413          	addi	s0,sp,32
    uint8 i = 10;
    80005888:	00a00493          	li	s1,10
    8000588c:	0400006f          	j	800058cc <_Z11workerBodyDPv+0x5c>
    for (; i < 13; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005890:	00003517          	auipc	a0,0x3
    80005894:	bc850513          	addi	a0,a0,-1080 # 80008458 <CONSOLE_STATUS+0x448>
    80005898:	fffff097          	auipc	ra,0xfffff
    8000589c:	5a0080e7          	jalr	1440(ra) # 80004e38 <_Z11printStringPKc>
    800058a0:	00000613          	li	a2,0
    800058a4:	00a00593          	li	a1,10
    800058a8:	00048513          	mv	a0,s1
    800058ac:	fffff097          	auipc	ra,0xfffff
    800058b0:	724080e7          	jalr	1828(ra) # 80004fd0 <_Z8printIntiii>
    800058b4:	00003517          	auipc	a0,0x3
    800058b8:	d4c50513          	addi	a0,a0,-692 # 80008600 <CONSOLE_STATUS+0x5f0>
    800058bc:	fffff097          	auipc	ra,0xfffff
    800058c0:	57c080e7          	jalr	1404(ra) # 80004e38 <_Z11printStringPKc>
    for (; i < 13; i++) {
    800058c4:	0014849b          	addiw	s1,s1,1
    800058c8:	0ff4f493          	andi	s1,s1,255
    800058cc:	00c00793          	li	a5,12
    800058d0:	fc97f0e3          	bgeu	a5,s1,80005890 <_Z11workerBodyDPv+0x20>
    }

    printString("D: dispatch\n");
    800058d4:	00003517          	auipc	a0,0x3
    800058d8:	b8c50513          	addi	a0,a0,-1140 # 80008460 <CONSOLE_STATUS+0x450>
    800058dc:	fffff097          	auipc	ra,0xfffff
    800058e0:	55c080e7          	jalr	1372(ra) # 80004e38 <_Z11printStringPKc>
    __asm__ ("li t1, 5");
    800058e4:	00500313          	li	t1,5
    thread_dispatch();
    800058e8:	ffffc097          	auipc	ra,0xffffc
    800058ec:	634080e7          	jalr	1588(ra) # 80001f1c <_Z15thread_dispatchv>

    uint64 result = fibonacci(16);
    800058f0:	01000513          	li	a0,16
    800058f4:	00000097          	auipc	ra,0x0
    800058f8:	d88080e7          	jalr	-632(ra) # 8000567c <_Z9fibonaccim>
    800058fc:	00050913          	mv	s2,a0
    printString("D: fibonaci="); printInt(result); printString("\n");
    80005900:	00003517          	auipc	a0,0x3
    80005904:	b7050513          	addi	a0,a0,-1168 # 80008470 <CONSOLE_STATUS+0x460>
    80005908:	fffff097          	auipc	ra,0xfffff
    8000590c:	530080e7          	jalr	1328(ra) # 80004e38 <_Z11printStringPKc>
    80005910:	00000613          	li	a2,0
    80005914:	00a00593          	li	a1,10
    80005918:	0009051b          	sext.w	a0,s2
    8000591c:	fffff097          	auipc	ra,0xfffff
    80005920:	6b4080e7          	jalr	1716(ra) # 80004fd0 <_Z8printIntiii>
    80005924:	00003517          	auipc	a0,0x3
    80005928:	cdc50513          	addi	a0,a0,-804 # 80008600 <CONSOLE_STATUS+0x5f0>
    8000592c:	fffff097          	auipc	ra,0xfffff
    80005930:	50c080e7          	jalr	1292(ra) # 80004e38 <_Z11printStringPKc>
    80005934:	0400006f          	j	80005974 <_Z11workerBodyDPv+0x104>

    for (; i < 16; i++) {
        printString("D: i="); printInt(i); printString("\n");
    80005938:	00003517          	auipc	a0,0x3
    8000593c:	b2050513          	addi	a0,a0,-1248 # 80008458 <CONSOLE_STATUS+0x448>
    80005940:	fffff097          	auipc	ra,0xfffff
    80005944:	4f8080e7          	jalr	1272(ra) # 80004e38 <_Z11printStringPKc>
    80005948:	00000613          	li	a2,0
    8000594c:	00a00593          	li	a1,10
    80005950:	00048513          	mv	a0,s1
    80005954:	fffff097          	auipc	ra,0xfffff
    80005958:	67c080e7          	jalr	1660(ra) # 80004fd0 <_Z8printIntiii>
    8000595c:	00003517          	auipc	a0,0x3
    80005960:	ca450513          	addi	a0,a0,-860 # 80008600 <CONSOLE_STATUS+0x5f0>
    80005964:	fffff097          	auipc	ra,0xfffff
    80005968:	4d4080e7          	jalr	1236(ra) # 80004e38 <_Z11printStringPKc>
    for (; i < 16; i++) {
    8000596c:	0014849b          	addiw	s1,s1,1
    80005970:	0ff4f493          	andi	s1,s1,255
    80005974:	00f00793          	li	a5,15
    80005978:	fc97f0e3          	bgeu	a5,s1,80005938 <_Z11workerBodyDPv+0xc8>
    }

    thread_dispatch();
    8000597c:	ffffc097          	auipc	ra,0xffffc
    80005980:	5a0080e7          	jalr	1440(ra) # 80001f1c <_Z15thread_dispatchv>
    printString("D finished!\n");
    80005984:	00003517          	auipc	a0,0x3
    80005988:	afc50513          	addi	a0,a0,-1284 # 80008480 <CONSOLE_STATUS+0x470>
    8000598c:	fffff097          	auipc	ra,0xfffff
    80005990:	4ac080e7          	jalr	1196(ra) # 80004e38 <_Z11printStringPKc>
    finishedD = true;
    80005994:	00100793          	li	a5,1
    80005998:	00009717          	auipc	a4,0x9
    8000599c:	ecf701a3          	sb	a5,-317(a4) # 8000e85b <finishedD>
}
    800059a0:	01813083          	ld	ra,24(sp)
    800059a4:	01013403          	ld	s0,16(sp)
    800059a8:	00813483          	ld	s1,8(sp)
    800059ac:	00013903          	ld	s2,0(sp)
    800059b0:	02010113          	addi	sp,sp,32
    800059b4:	00008067          	ret

00000000800059b8 <_Z18Threads_C_API_testv>:


void Threads_C_API_test() {
    800059b8:	fc010113          	addi	sp,sp,-64
    800059bc:	02113c23          	sd	ra,56(sp)
    800059c0:	02813823          	sd	s0,48(sp)
    800059c4:	02913423          	sd	s1,40(sp)
    800059c8:	04010413          	addi	s0,sp,64
    thread_t threads[4];
    thread_create(&threads[0], workerBodyA, nullptr);
    800059cc:	00000613          	li	a2,0
    800059d0:	00000597          	auipc	a1,0x0
    800059d4:	b0c58593          	addi	a1,a1,-1268 # 800054dc <_Z11workerBodyAPv>
    800059d8:	fc040513          	addi	a0,s0,-64
    800059dc:	ffffc097          	auipc	ra,0xffffc
    800059e0:	4c0080e7          	jalr	1216(ra) # 80001e9c <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadA created\n");
    800059e4:	00003517          	auipc	a0,0x3
    800059e8:	aac50513          	addi	a0,a0,-1364 # 80008490 <CONSOLE_STATUS+0x480>
    800059ec:	fffff097          	auipc	ra,0xfffff
    800059f0:	44c080e7          	jalr	1100(ra) # 80004e38 <_Z11printStringPKc>

    thread_create(&threads[1], workerBodyB, nullptr);
    800059f4:	00000613          	li	a2,0
    800059f8:	00000597          	auipc	a1,0x0
    800059fc:	bb058593          	addi	a1,a1,-1104 # 800055a8 <_Z11workerBodyBPv>
    80005a00:	fc840513          	addi	a0,s0,-56
    80005a04:	ffffc097          	auipc	ra,0xffffc
    80005a08:	498080e7          	jalr	1176(ra) # 80001e9c <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadB created\n");
    80005a0c:	00003517          	auipc	a0,0x3
    80005a10:	a9c50513          	addi	a0,a0,-1380 # 800084a8 <CONSOLE_STATUS+0x498>
    80005a14:	fffff097          	auipc	ra,0xfffff
    80005a18:	424080e7          	jalr	1060(ra) # 80004e38 <_Z11printStringPKc>

    thread_create(&threads[2], workerBodyC, nullptr);
    80005a1c:	00000613          	li	a2,0
    80005a20:	00000597          	auipc	a1,0x0
    80005a24:	cd058593          	addi	a1,a1,-816 # 800056f0 <_Z11workerBodyCPv>
    80005a28:	fd040513          	addi	a0,s0,-48
    80005a2c:	ffffc097          	auipc	ra,0xffffc
    80005a30:	470080e7          	jalr	1136(ra) # 80001e9c <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadC created\n");
    80005a34:	00003517          	auipc	a0,0x3
    80005a38:	a8c50513          	addi	a0,a0,-1396 # 800084c0 <CONSOLE_STATUS+0x4b0>
    80005a3c:	fffff097          	auipc	ra,0xfffff
    80005a40:	3fc080e7          	jalr	1020(ra) # 80004e38 <_Z11printStringPKc>

    thread_create(&threads[3], workerBodyD, nullptr);
    80005a44:	00000613          	li	a2,0
    80005a48:	00000597          	auipc	a1,0x0
    80005a4c:	e2858593          	addi	a1,a1,-472 # 80005870 <_Z11workerBodyDPv>
    80005a50:	fd840513          	addi	a0,s0,-40
    80005a54:	ffffc097          	auipc	ra,0xffffc
    80005a58:	448080e7          	jalr	1096(ra) # 80001e9c <_Z13thread_createPP7_threadPFvPvES2_>
    printString("ThreadD created\n");
    80005a5c:	00003517          	auipc	a0,0x3
    80005a60:	a7c50513          	addi	a0,a0,-1412 # 800084d8 <CONSOLE_STATUS+0x4c8>
    80005a64:	fffff097          	auipc	ra,0xfffff
    80005a68:	3d4080e7          	jalr	980(ra) # 80004e38 <_Z11printStringPKc>
    80005a6c:	00c0006f          	j	80005a78 <_Z18Threads_C_API_testv+0xc0>

    while (!(finishedA && finishedB && finishedC && finishedD)) {
        thread_dispatch();
    80005a70:	ffffc097          	auipc	ra,0xffffc
    80005a74:	4ac080e7          	jalr	1196(ra) # 80001f1c <_Z15thread_dispatchv>
    while (!(finishedA && finishedB && finishedC && finishedD)) {
    80005a78:	00009797          	auipc	a5,0x9
    80005a7c:	de07c783          	lbu	a5,-544(a5) # 8000e858 <finishedA>
    80005a80:	fe0788e3          	beqz	a5,80005a70 <_Z18Threads_C_API_testv+0xb8>
    80005a84:	00009797          	auipc	a5,0x9
    80005a88:	dd57c783          	lbu	a5,-555(a5) # 8000e859 <finishedB>
    80005a8c:	fe0782e3          	beqz	a5,80005a70 <_Z18Threads_C_API_testv+0xb8>
    80005a90:	00009797          	auipc	a5,0x9
    80005a94:	dca7c783          	lbu	a5,-566(a5) # 8000e85a <finishedC>
    80005a98:	fc078ce3          	beqz	a5,80005a70 <_Z18Threads_C_API_testv+0xb8>
    80005a9c:	00009797          	auipc	a5,0x9
    80005aa0:	dbf7c783          	lbu	a5,-577(a5) # 8000e85b <finishedD>
    80005aa4:	fc0786e3          	beqz	a5,80005a70 <_Z18Threads_C_API_testv+0xb8>
    }

    for (auto &thread: threads) { delete thread; }
    80005aa8:	fc040493          	addi	s1,s0,-64
    80005aac:	0080006f          	j	80005ab4 <_Z18Threads_C_API_testv+0xfc>
    80005ab0:	00848493          	addi	s1,s1,8
    80005ab4:	fe040793          	addi	a5,s0,-32
    80005ab8:	00f48c63          	beq	s1,a5,80005ad0 <_Z18Threads_C_API_testv+0x118>
    80005abc:	0004b503          	ld	a0,0(s1)
    80005ac0:	fe0508e3          	beqz	a0,80005ab0 <_Z18Threads_C_API_testv+0xf8>
    80005ac4:	ffffc097          	auipc	ra,0xffffc
    80005ac8:	6d4080e7          	jalr	1748(ra) # 80002198 <_ZN7_threaddlEPv>
    80005acc:	fe5ff06f          	j	80005ab0 <_Z18Threads_C_API_testv+0xf8>
}
    80005ad0:	03813083          	ld	ra,56(sp)
    80005ad4:	03013403          	ld	s0,48(sp)
    80005ad8:	02813483          	ld	s1,40(sp)
    80005adc:	04010113          	addi	sp,sp,64
    80005ae0:	00008067          	ret

0000000080005ae4 <_Z8userMainv>:

//#include "ThreadSleep_C_API_test.hpp" // thread_sleep test C API
//#include "ConsumerProducer_CPP_API_test.hpp" // zadatak 4. CPP API i asinhrona promena konteksta

void userMain()
{
    80005ae4:	ff010113          	addi	sp,sp,-16
    80005ae8:	00113423          	sd	ra,8(sp)
    80005aec:	00813023          	sd	s0,0(sp)
    80005af0:	01010413          	addi	s0,sp,16
    //__asm__ volatile("csrr a0, sstatus"); // test for changing privilege

    Threads_C_API_test(); // zadatak 2., niti C API i sinhrona promena konteksta
    80005af4:	00000097          	auipc	ra,0x0
    80005af8:	ec4080e7          	jalr	-316(ra) # 800059b8 <_Z18Threads_C_API_testv>
    //producerConsumer_C_API(); // zadatak 3., kompletan C API sa semaforima, sinhrona promena konteksta
    //producerConsumer_CPP_Sync_API(); // zadatak 3., kompletan CPP API sa semaforima, sinhrona promena konteksta

    //testSleeping(); // thread_sleep test C API
    //ConsumerProducerCPP::testConsumerProducer(); // zadatak 4. CPP API i asinhrona promena konteksta, kompletan test svega
    80005afc:	00813083          	ld	ra,8(sp)
    80005b00:	00013403          	ld	s0,0(sp)
    80005b04:	01010113          	addi	sp,sp,16
    80005b08:	00008067          	ret

0000000080005b0c <_ZN6BufferC1Ei>:
#include "buffer.hpp"

Buffer::Buffer(int _cap) : cap(_cap + 1), head(0), tail(0) {
    80005b0c:	fe010113          	addi	sp,sp,-32
    80005b10:	00113c23          	sd	ra,24(sp)
    80005b14:	00813823          	sd	s0,16(sp)
    80005b18:	00913423          	sd	s1,8(sp)
    80005b1c:	01213023          	sd	s2,0(sp)
    80005b20:	02010413          	addi	s0,sp,32
    80005b24:	00050493          	mv	s1,a0
    80005b28:	00058913          	mv	s2,a1
    80005b2c:	0015879b          	addiw	a5,a1,1
    80005b30:	0007851b          	sext.w	a0,a5
    80005b34:	00f4a023          	sw	a5,0(s1)
    80005b38:	0004a823          	sw	zero,16(s1)
    80005b3c:	0004aa23          	sw	zero,20(s1)
    buffer = (int *)mem_alloc(sizeof(int) * cap);
    80005b40:	00251513          	slli	a0,a0,0x2
    80005b44:	ffffc097          	auipc	ra,0xffffc
    80005b48:	2fc080e7          	jalr	764(ra) # 80001e40 <_Z9mem_allocm>
    80005b4c:	00a4b423          	sd	a0,8(s1)
    sem_open(&itemAvailable, 0);
    80005b50:	00000593          	li	a1,0
    80005b54:	02048513          	addi	a0,s1,32
    80005b58:	ffffc097          	auipc	ra,0xffffc
    80005b5c:	40c080e7          	jalr	1036(ra) # 80001f64 <_Z8sem_openPP4_semj>
    sem_open(&spaceAvailable, _cap);
    80005b60:	00090593          	mv	a1,s2
    80005b64:	01848513          	addi	a0,s1,24
    80005b68:	ffffc097          	auipc	ra,0xffffc
    80005b6c:	3fc080e7          	jalr	1020(ra) # 80001f64 <_Z8sem_openPP4_semj>
    sem_open(&mutexHead, 1);
    80005b70:	00100593          	li	a1,1
    80005b74:	02848513          	addi	a0,s1,40
    80005b78:	ffffc097          	auipc	ra,0xffffc
    80005b7c:	3ec080e7          	jalr	1004(ra) # 80001f64 <_Z8sem_openPP4_semj>
    sem_open(&mutexTail, 1);
    80005b80:	00100593          	li	a1,1
    80005b84:	03048513          	addi	a0,s1,48
    80005b88:	ffffc097          	auipc	ra,0xffffc
    80005b8c:	3dc080e7          	jalr	988(ra) # 80001f64 <_Z8sem_openPP4_semj>
}
    80005b90:	01813083          	ld	ra,24(sp)
    80005b94:	01013403          	ld	s0,16(sp)
    80005b98:	00813483          	ld	s1,8(sp)
    80005b9c:	00013903          	ld	s2,0(sp)
    80005ba0:	02010113          	addi	sp,sp,32
    80005ba4:	00008067          	ret

0000000080005ba8 <_ZN6Buffer3putEi>:
    sem_close(spaceAvailable);
    sem_close(mutexTail);
    sem_close(mutexHead);
}

void Buffer::put(int val) {
    80005ba8:	fe010113          	addi	sp,sp,-32
    80005bac:	00113c23          	sd	ra,24(sp)
    80005bb0:	00813823          	sd	s0,16(sp)
    80005bb4:	00913423          	sd	s1,8(sp)
    80005bb8:	01213023          	sd	s2,0(sp)
    80005bbc:	02010413          	addi	s0,sp,32
    80005bc0:	00050493          	mv	s1,a0
    80005bc4:	00058913          	mv	s2,a1
    sem_wait(spaceAvailable);
    80005bc8:	01853503          	ld	a0,24(a0)
    80005bcc:	ffffc097          	auipc	ra,0xffffc
    80005bd0:	3fc080e7          	jalr	1020(ra) # 80001fc8 <_Z8sem_waitP4_sem>

    sem_wait(mutexTail);
    80005bd4:	0304b503          	ld	a0,48(s1)
    80005bd8:	ffffc097          	auipc	ra,0xffffc
    80005bdc:	3f0080e7          	jalr	1008(ra) # 80001fc8 <_Z8sem_waitP4_sem>
    buffer[tail] = val;
    80005be0:	0084b783          	ld	a5,8(s1)
    80005be4:	0144a703          	lw	a4,20(s1)
    80005be8:	00271713          	slli	a4,a4,0x2
    80005bec:	00e787b3          	add	a5,a5,a4
    80005bf0:	0127a023          	sw	s2,0(a5)
    tail = (tail + 1) % cap;
    80005bf4:	0144a783          	lw	a5,20(s1)
    80005bf8:	0017879b          	addiw	a5,a5,1
    80005bfc:	0004a703          	lw	a4,0(s1)
    80005c00:	02e7e7bb          	remw	a5,a5,a4
    80005c04:	00f4aa23          	sw	a5,20(s1)
    sem_signal(mutexTail);
    80005c08:	0304b503          	ld	a0,48(s1)
    80005c0c:	ffffc097          	auipc	ra,0xffffc
    80005c10:	3e8080e7          	jalr	1000(ra) # 80001ff4 <_Z10sem_signalP4_sem>

    sem_signal(itemAvailable);
    80005c14:	0204b503          	ld	a0,32(s1)
    80005c18:	ffffc097          	auipc	ra,0xffffc
    80005c1c:	3dc080e7          	jalr	988(ra) # 80001ff4 <_Z10sem_signalP4_sem>

}
    80005c20:	01813083          	ld	ra,24(sp)
    80005c24:	01013403          	ld	s0,16(sp)
    80005c28:	00813483          	ld	s1,8(sp)
    80005c2c:	00013903          	ld	s2,0(sp)
    80005c30:	02010113          	addi	sp,sp,32
    80005c34:	00008067          	ret

0000000080005c38 <_ZN6Buffer3getEv>:

int Buffer::get() {
    80005c38:	fe010113          	addi	sp,sp,-32
    80005c3c:	00113c23          	sd	ra,24(sp)
    80005c40:	00813823          	sd	s0,16(sp)
    80005c44:	00913423          	sd	s1,8(sp)
    80005c48:	01213023          	sd	s2,0(sp)
    80005c4c:	02010413          	addi	s0,sp,32
    80005c50:	00050493          	mv	s1,a0
    sem_wait(itemAvailable);
    80005c54:	02053503          	ld	a0,32(a0)
    80005c58:	ffffc097          	auipc	ra,0xffffc
    80005c5c:	370080e7          	jalr	880(ra) # 80001fc8 <_Z8sem_waitP4_sem>

    sem_wait(mutexHead);
    80005c60:	0284b503          	ld	a0,40(s1)
    80005c64:	ffffc097          	auipc	ra,0xffffc
    80005c68:	364080e7          	jalr	868(ra) # 80001fc8 <_Z8sem_waitP4_sem>

    int ret = buffer[head];
    80005c6c:	0084b703          	ld	a4,8(s1)
    80005c70:	0104a783          	lw	a5,16(s1)
    80005c74:	00279693          	slli	a3,a5,0x2
    80005c78:	00d70733          	add	a4,a4,a3
    80005c7c:	00072903          	lw	s2,0(a4)
    head = (head + 1) % cap;
    80005c80:	0017879b          	addiw	a5,a5,1
    80005c84:	0004a703          	lw	a4,0(s1)
    80005c88:	02e7e7bb          	remw	a5,a5,a4
    80005c8c:	00f4a823          	sw	a5,16(s1)
    sem_signal(mutexHead);
    80005c90:	0284b503          	ld	a0,40(s1)
    80005c94:	ffffc097          	auipc	ra,0xffffc
    80005c98:	360080e7          	jalr	864(ra) # 80001ff4 <_Z10sem_signalP4_sem>

    sem_signal(spaceAvailable);
    80005c9c:	0184b503          	ld	a0,24(s1)
    80005ca0:	ffffc097          	auipc	ra,0xffffc
    80005ca4:	354080e7          	jalr	852(ra) # 80001ff4 <_Z10sem_signalP4_sem>

    return ret;
}
    80005ca8:	00090513          	mv	a0,s2
    80005cac:	01813083          	ld	ra,24(sp)
    80005cb0:	01013403          	ld	s0,16(sp)
    80005cb4:	00813483          	ld	s1,8(sp)
    80005cb8:	00013903          	ld	s2,0(sp)
    80005cbc:	02010113          	addi	sp,sp,32
    80005cc0:	00008067          	ret

0000000080005cc4 <_ZN6Buffer6getCntEv>:

int Buffer::getCnt() {
    80005cc4:	fe010113          	addi	sp,sp,-32
    80005cc8:	00113c23          	sd	ra,24(sp)
    80005ccc:	00813823          	sd	s0,16(sp)
    80005cd0:	00913423          	sd	s1,8(sp)
    80005cd4:	01213023          	sd	s2,0(sp)
    80005cd8:	02010413          	addi	s0,sp,32
    80005cdc:	00050493          	mv	s1,a0
    int ret;

    sem_wait(mutexHead);
    80005ce0:	02853503          	ld	a0,40(a0)
    80005ce4:	ffffc097          	auipc	ra,0xffffc
    80005ce8:	2e4080e7          	jalr	740(ra) # 80001fc8 <_Z8sem_waitP4_sem>
    sem_wait(mutexTail);
    80005cec:	0304b503          	ld	a0,48(s1)
    80005cf0:	ffffc097          	auipc	ra,0xffffc
    80005cf4:	2d8080e7          	jalr	728(ra) # 80001fc8 <_Z8sem_waitP4_sem>

    if (tail >= head) {
    80005cf8:	0144a783          	lw	a5,20(s1)
    80005cfc:	0104a903          	lw	s2,16(s1)
    80005d00:	0327ce63          	blt	a5,s2,80005d3c <_ZN6Buffer6getCntEv+0x78>
        ret = tail - head;
    80005d04:	4127893b          	subw	s2,a5,s2
    } else {
        ret = cap - head + tail;
    }

    sem_signal(mutexTail);
    80005d08:	0304b503          	ld	a0,48(s1)
    80005d0c:	ffffc097          	auipc	ra,0xffffc
    80005d10:	2e8080e7          	jalr	744(ra) # 80001ff4 <_Z10sem_signalP4_sem>
    sem_signal(mutexHead);
    80005d14:	0284b503          	ld	a0,40(s1)
    80005d18:	ffffc097          	auipc	ra,0xffffc
    80005d1c:	2dc080e7          	jalr	732(ra) # 80001ff4 <_Z10sem_signalP4_sem>

    return ret;
    80005d20:	00090513          	mv	a0,s2
    80005d24:	01813083          	ld	ra,24(sp)
    80005d28:	01013403          	ld	s0,16(sp)
    80005d2c:	00813483          	ld	s1,8(sp)
    80005d30:	00013903          	ld	s2,0(sp)
    80005d34:	02010113          	addi	sp,sp,32
    80005d38:	00008067          	ret
        ret = cap - head + tail;
    80005d3c:	0004a703          	lw	a4,0(s1)
    80005d40:	4127093b          	subw	s2,a4,s2
    80005d44:	00f9093b          	addw	s2,s2,a5
    80005d48:	fc1ff06f          	j	80005d08 <_ZN6Buffer6getCntEv+0x44>

0000000080005d4c <_ZN6BufferD1Ev>:
Buffer::~Buffer() {
    80005d4c:	fe010113          	addi	sp,sp,-32
    80005d50:	00113c23          	sd	ra,24(sp)
    80005d54:	00813823          	sd	s0,16(sp)
    80005d58:	00913423          	sd	s1,8(sp)
    80005d5c:	02010413          	addi	s0,sp,32
    80005d60:	00050493          	mv	s1,a0
    putc('\n');
    80005d64:	00a00513          	li	a0,10
    80005d68:	ffffc097          	auipc	ra,0xffffc
    80005d6c:	3b8080e7          	jalr	952(ra) # 80002120 <_Z4putcc>
    printString("Buffer deleted!\n");
    80005d70:	00002517          	auipc	a0,0x2
    80005d74:	67050513          	addi	a0,a0,1648 # 800083e0 <CONSOLE_STATUS+0x3d0>
    80005d78:	fffff097          	auipc	ra,0xfffff
    80005d7c:	0c0080e7          	jalr	192(ra) # 80004e38 <_Z11printStringPKc>
    while (getCnt() > 0) {
    80005d80:	00048513          	mv	a0,s1
    80005d84:	00000097          	auipc	ra,0x0
    80005d88:	f40080e7          	jalr	-192(ra) # 80005cc4 <_ZN6Buffer6getCntEv>
    80005d8c:	02a05c63          	blez	a0,80005dc4 <_ZN6BufferD1Ev+0x78>
        char ch = buffer[head];
    80005d90:	0084b783          	ld	a5,8(s1)
    80005d94:	0104a703          	lw	a4,16(s1)
    80005d98:	00271713          	slli	a4,a4,0x2
    80005d9c:	00e787b3          	add	a5,a5,a4
        putc(ch);
    80005da0:	0007c503          	lbu	a0,0(a5)
    80005da4:	ffffc097          	auipc	ra,0xffffc
    80005da8:	37c080e7          	jalr	892(ra) # 80002120 <_Z4putcc>
        head = (head + 1) % cap;
    80005dac:	0104a783          	lw	a5,16(s1)
    80005db0:	0017879b          	addiw	a5,a5,1
    80005db4:	0004a703          	lw	a4,0(s1)
    80005db8:	02e7e7bb          	remw	a5,a5,a4
    80005dbc:	00f4a823          	sw	a5,16(s1)
    while (getCnt() > 0) {
    80005dc0:	fc1ff06f          	j	80005d80 <_ZN6BufferD1Ev+0x34>
    putc('!');
    80005dc4:	02100513          	li	a0,33
    80005dc8:	ffffc097          	auipc	ra,0xffffc
    80005dcc:	358080e7          	jalr	856(ra) # 80002120 <_Z4putcc>
    putc('\n');
    80005dd0:	00a00513          	li	a0,10
    80005dd4:	ffffc097          	auipc	ra,0xffffc
    80005dd8:	34c080e7          	jalr	844(ra) # 80002120 <_Z4putcc>
    mem_free(buffer);
    80005ddc:	0084b503          	ld	a0,8(s1)
    80005de0:	ffffc097          	auipc	ra,0xffffc
    80005de4:	090080e7          	jalr	144(ra) # 80001e70 <_Z8mem_freePv>
    sem_close(itemAvailable);
    80005de8:	0204b503          	ld	a0,32(s1)
    80005dec:	ffffc097          	auipc	ra,0xffffc
    80005df0:	1b0080e7          	jalr	432(ra) # 80001f9c <_Z9sem_closeP4_sem>
    sem_close(spaceAvailable);
    80005df4:	0184b503          	ld	a0,24(s1)
    80005df8:	ffffc097          	auipc	ra,0xffffc
    80005dfc:	1a4080e7          	jalr	420(ra) # 80001f9c <_Z9sem_closeP4_sem>
    sem_close(mutexTail);
    80005e00:	0304b503          	ld	a0,48(s1)
    80005e04:	ffffc097          	auipc	ra,0xffffc
    80005e08:	198080e7          	jalr	408(ra) # 80001f9c <_Z9sem_closeP4_sem>
    sem_close(mutexHead);
    80005e0c:	0284b503          	ld	a0,40(s1)
    80005e10:	ffffc097          	auipc	ra,0xffffc
    80005e14:	18c080e7          	jalr	396(ra) # 80001f9c <_Z9sem_closeP4_sem>
}
    80005e18:	01813083          	ld	ra,24(sp)
    80005e1c:	01013403          	ld	s0,16(sp)
    80005e20:	00813483          	ld	s1,8(sp)
    80005e24:	02010113          	addi	sp,sp,32
    80005e28:	00008067          	ret

0000000080005e2c <start>:
    80005e2c:	ff010113          	addi	sp,sp,-16
    80005e30:	00813423          	sd	s0,8(sp)
    80005e34:	01010413          	addi	s0,sp,16
    80005e38:	300027f3          	csrr	a5,mstatus
    80005e3c:	ffffe737          	lui	a4,0xffffe
    80005e40:	7ff70713          	addi	a4,a4,2047 # ffffffffffffe7ff <end+0xffffffff7ffeed3f>
    80005e44:	00e7f7b3          	and	a5,a5,a4
    80005e48:	00001737          	lui	a4,0x1
    80005e4c:	80070713          	addi	a4,a4,-2048 # 800 <_entry-0x7ffff800>
    80005e50:	00e7e7b3          	or	a5,a5,a4
    80005e54:	30079073          	csrw	mstatus,a5
    80005e58:	00000797          	auipc	a5,0x0
    80005e5c:	16078793          	addi	a5,a5,352 # 80005fb8 <system_main>
    80005e60:	34179073          	csrw	mepc,a5
    80005e64:	00000793          	li	a5,0
    80005e68:	18079073          	csrw	satp,a5
    80005e6c:	000107b7          	lui	a5,0x10
    80005e70:	fff78793          	addi	a5,a5,-1 # ffff <_entry-0x7fff0001>
    80005e74:	30279073          	csrw	medeleg,a5
    80005e78:	30379073          	csrw	mideleg,a5
    80005e7c:	104027f3          	csrr	a5,sie
    80005e80:	2227e793          	ori	a5,a5,546
    80005e84:	10479073          	csrw	sie,a5
    80005e88:	fff00793          	li	a5,-1
    80005e8c:	00a7d793          	srli	a5,a5,0xa
    80005e90:	3b079073          	csrw	pmpaddr0,a5
    80005e94:	00f00793          	li	a5,15
    80005e98:	3a079073          	csrw	pmpcfg0,a5
    80005e9c:	f14027f3          	csrr	a5,mhartid
    80005ea0:	0200c737          	lui	a4,0x200c
    80005ea4:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005ea8:	0007869b          	sext.w	a3,a5
    80005eac:	00269713          	slli	a4,a3,0x2
    80005eb0:	000f4637          	lui	a2,0xf4
    80005eb4:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005eb8:	00d70733          	add	a4,a4,a3
    80005ebc:	0037979b          	slliw	a5,a5,0x3
    80005ec0:	020046b7          	lui	a3,0x2004
    80005ec4:	00d787b3          	add	a5,a5,a3
    80005ec8:	00c585b3          	add	a1,a1,a2
    80005ecc:	00371693          	slli	a3,a4,0x3
    80005ed0:	00009717          	auipc	a4,0x9
    80005ed4:	99070713          	addi	a4,a4,-1648 # 8000e860 <timer_scratch>
    80005ed8:	00b7b023          	sd	a1,0(a5)
    80005edc:	00d70733          	add	a4,a4,a3
    80005ee0:	00f73c23          	sd	a5,24(a4)
    80005ee4:	02c73023          	sd	a2,32(a4)
    80005ee8:	34071073          	csrw	mscratch,a4
    80005eec:	00000797          	auipc	a5,0x0
    80005ef0:	6e478793          	addi	a5,a5,1764 # 800065d0 <timervec>
    80005ef4:	30579073          	csrw	mtvec,a5
    80005ef8:	300027f3          	csrr	a5,mstatus
    80005efc:	0087e793          	ori	a5,a5,8
    80005f00:	30079073          	csrw	mstatus,a5
    80005f04:	304027f3          	csrr	a5,mie
    80005f08:	0807e793          	ori	a5,a5,128
    80005f0c:	30479073          	csrw	mie,a5
    80005f10:	f14027f3          	csrr	a5,mhartid
    80005f14:	0007879b          	sext.w	a5,a5
    80005f18:	00078213          	mv	tp,a5
    80005f1c:	30200073          	mret
    80005f20:	00813403          	ld	s0,8(sp)
    80005f24:	01010113          	addi	sp,sp,16
    80005f28:	00008067          	ret

0000000080005f2c <timerinit>:
    80005f2c:	ff010113          	addi	sp,sp,-16
    80005f30:	00813423          	sd	s0,8(sp)
    80005f34:	01010413          	addi	s0,sp,16
    80005f38:	f14027f3          	csrr	a5,mhartid
    80005f3c:	0200c737          	lui	a4,0x200c
    80005f40:	ff873583          	ld	a1,-8(a4) # 200bff8 <_entry-0x7dff4008>
    80005f44:	0007869b          	sext.w	a3,a5
    80005f48:	00269713          	slli	a4,a3,0x2
    80005f4c:	000f4637          	lui	a2,0xf4
    80005f50:	24060613          	addi	a2,a2,576 # f4240 <_entry-0x7ff0bdc0>
    80005f54:	00d70733          	add	a4,a4,a3
    80005f58:	0037979b          	slliw	a5,a5,0x3
    80005f5c:	020046b7          	lui	a3,0x2004
    80005f60:	00d787b3          	add	a5,a5,a3
    80005f64:	00c585b3          	add	a1,a1,a2
    80005f68:	00371693          	slli	a3,a4,0x3
    80005f6c:	00009717          	auipc	a4,0x9
    80005f70:	8f470713          	addi	a4,a4,-1804 # 8000e860 <timer_scratch>
    80005f74:	00b7b023          	sd	a1,0(a5)
    80005f78:	00d70733          	add	a4,a4,a3
    80005f7c:	00f73c23          	sd	a5,24(a4)
    80005f80:	02c73023          	sd	a2,32(a4)
    80005f84:	34071073          	csrw	mscratch,a4
    80005f88:	00000797          	auipc	a5,0x0
    80005f8c:	64878793          	addi	a5,a5,1608 # 800065d0 <timervec>
    80005f90:	30579073          	csrw	mtvec,a5
    80005f94:	300027f3          	csrr	a5,mstatus
    80005f98:	0087e793          	ori	a5,a5,8
    80005f9c:	30079073          	csrw	mstatus,a5
    80005fa0:	304027f3          	csrr	a5,mie
    80005fa4:	0807e793          	ori	a5,a5,128
    80005fa8:	30479073          	csrw	mie,a5
    80005fac:	00813403          	ld	s0,8(sp)
    80005fb0:	01010113          	addi	sp,sp,16
    80005fb4:	00008067          	ret

0000000080005fb8 <system_main>:
    80005fb8:	fe010113          	addi	sp,sp,-32
    80005fbc:	00813823          	sd	s0,16(sp)
    80005fc0:	00913423          	sd	s1,8(sp)
    80005fc4:	00113c23          	sd	ra,24(sp)
    80005fc8:	02010413          	addi	s0,sp,32
    80005fcc:	00000097          	auipc	ra,0x0
    80005fd0:	0c4080e7          	jalr	196(ra) # 80006090 <cpuid>
    80005fd4:	00004497          	auipc	s1,0x4
    80005fd8:	79c48493          	addi	s1,s1,1948 # 8000a770 <started>
    80005fdc:	02050263          	beqz	a0,80006000 <system_main+0x48>
    80005fe0:	0004a783          	lw	a5,0(s1)
    80005fe4:	0007879b          	sext.w	a5,a5
    80005fe8:	fe078ce3          	beqz	a5,80005fe0 <system_main+0x28>
    80005fec:	0ff0000f          	fence
    80005ff0:	00002517          	auipc	a0,0x2
    80005ff4:	53050513          	addi	a0,a0,1328 # 80008520 <CONSOLE_STATUS+0x510>
    80005ff8:	00001097          	auipc	ra,0x1
    80005ffc:	a74080e7          	jalr	-1420(ra) # 80006a6c <panic>
    80006000:	00001097          	auipc	ra,0x1
    80006004:	9c8080e7          	jalr	-1592(ra) # 800069c8 <consoleinit>
    80006008:	00001097          	auipc	ra,0x1
    8000600c:	154080e7          	jalr	340(ra) # 8000715c <printfinit>
    80006010:	00002517          	auipc	a0,0x2
    80006014:	5f050513          	addi	a0,a0,1520 # 80008600 <CONSOLE_STATUS+0x5f0>
    80006018:	00001097          	auipc	ra,0x1
    8000601c:	ab0080e7          	jalr	-1360(ra) # 80006ac8 <__printf>
    80006020:	00002517          	auipc	a0,0x2
    80006024:	4d050513          	addi	a0,a0,1232 # 800084f0 <CONSOLE_STATUS+0x4e0>
    80006028:	00001097          	auipc	ra,0x1
    8000602c:	aa0080e7          	jalr	-1376(ra) # 80006ac8 <__printf>
    80006030:	00002517          	auipc	a0,0x2
    80006034:	5d050513          	addi	a0,a0,1488 # 80008600 <CONSOLE_STATUS+0x5f0>
    80006038:	00001097          	auipc	ra,0x1
    8000603c:	a90080e7          	jalr	-1392(ra) # 80006ac8 <__printf>
    80006040:	00001097          	auipc	ra,0x1
    80006044:	4a8080e7          	jalr	1192(ra) # 800074e8 <kinit>
    80006048:	00000097          	auipc	ra,0x0
    8000604c:	148080e7          	jalr	328(ra) # 80006190 <trapinit>
    80006050:	00000097          	auipc	ra,0x0
    80006054:	16c080e7          	jalr	364(ra) # 800061bc <trapinithart>
    80006058:	00000097          	auipc	ra,0x0
    8000605c:	5b8080e7          	jalr	1464(ra) # 80006610 <plicinit>
    80006060:	00000097          	auipc	ra,0x0
    80006064:	5d8080e7          	jalr	1496(ra) # 80006638 <plicinithart>
    80006068:	00000097          	auipc	ra,0x0
    8000606c:	078080e7          	jalr	120(ra) # 800060e0 <userinit>
    80006070:	0ff0000f          	fence
    80006074:	00100793          	li	a5,1
    80006078:	00002517          	auipc	a0,0x2
    8000607c:	49050513          	addi	a0,a0,1168 # 80008508 <CONSOLE_STATUS+0x4f8>
    80006080:	00f4a023          	sw	a5,0(s1)
    80006084:	00001097          	auipc	ra,0x1
    80006088:	a44080e7          	jalr	-1468(ra) # 80006ac8 <__printf>
    8000608c:	0000006f          	j	8000608c <system_main+0xd4>

0000000080006090 <cpuid>:
    80006090:	ff010113          	addi	sp,sp,-16
    80006094:	00813423          	sd	s0,8(sp)
    80006098:	01010413          	addi	s0,sp,16
    8000609c:	00020513          	mv	a0,tp
    800060a0:	00813403          	ld	s0,8(sp)
    800060a4:	0005051b          	sext.w	a0,a0
    800060a8:	01010113          	addi	sp,sp,16
    800060ac:	00008067          	ret

00000000800060b0 <mycpu>:
    800060b0:	ff010113          	addi	sp,sp,-16
    800060b4:	00813423          	sd	s0,8(sp)
    800060b8:	01010413          	addi	s0,sp,16
    800060bc:	00020793          	mv	a5,tp
    800060c0:	00813403          	ld	s0,8(sp)
    800060c4:	0007879b          	sext.w	a5,a5
    800060c8:	00779793          	slli	a5,a5,0x7
    800060cc:	00009517          	auipc	a0,0x9
    800060d0:	7c450513          	addi	a0,a0,1988 # 8000f890 <cpus>
    800060d4:	00f50533          	add	a0,a0,a5
    800060d8:	01010113          	addi	sp,sp,16
    800060dc:	00008067          	ret

00000000800060e0 <userinit>:
    800060e0:	ff010113          	addi	sp,sp,-16
    800060e4:	00813423          	sd	s0,8(sp)
    800060e8:	01010413          	addi	s0,sp,16
    800060ec:	00813403          	ld	s0,8(sp)
    800060f0:	01010113          	addi	sp,sp,16
    800060f4:	ffffd317          	auipc	t1,0xffffd
    800060f8:	73830067          	jr	1848(t1) # 8000382c <main>

00000000800060fc <either_copyout>:
    800060fc:	ff010113          	addi	sp,sp,-16
    80006100:	00813023          	sd	s0,0(sp)
    80006104:	00113423          	sd	ra,8(sp)
    80006108:	01010413          	addi	s0,sp,16
    8000610c:	02051663          	bnez	a0,80006138 <either_copyout+0x3c>
    80006110:	00058513          	mv	a0,a1
    80006114:	00060593          	mv	a1,a2
    80006118:	0006861b          	sext.w	a2,a3
    8000611c:	00002097          	auipc	ra,0x2
    80006120:	c58080e7          	jalr	-936(ra) # 80007d74 <__memmove>
    80006124:	00813083          	ld	ra,8(sp)
    80006128:	00013403          	ld	s0,0(sp)
    8000612c:	00000513          	li	a0,0
    80006130:	01010113          	addi	sp,sp,16
    80006134:	00008067          	ret
    80006138:	00002517          	auipc	a0,0x2
    8000613c:	41050513          	addi	a0,a0,1040 # 80008548 <CONSOLE_STATUS+0x538>
    80006140:	00001097          	auipc	ra,0x1
    80006144:	92c080e7          	jalr	-1748(ra) # 80006a6c <panic>

0000000080006148 <either_copyin>:
    80006148:	ff010113          	addi	sp,sp,-16
    8000614c:	00813023          	sd	s0,0(sp)
    80006150:	00113423          	sd	ra,8(sp)
    80006154:	01010413          	addi	s0,sp,16
    80006158:	02059463          	bnez	a1,80006180 <either_copyin+0x38>
    8000615c:	00060593          	mv	a1,a2
    80006160:	0006861b          	sext.w	a2,a3
    80006164:	00002097          	auipc	ra,0x2
    80006168:	c10080e7          	jalr	-1008(ra) # 80007d74 <__memmove>
    8000616c:	00813083          	ld	ra,8(sp)
    80006170:	00013403          	ld	s0,0(sp)
    80006174:	00000513          	li	a0,0
    80006178:	01010113          	addi	sp,sp,16
    8000617c:	00008067          	ret
    80006180:	00002517          	auipc	a0,0x2
    80006184:	3f050513          	addi	a0,a0,1008 # 80008570 <CONSOLE_STATUS+0x560>
    80006188:	00001097          	auipc	ra,0x1
    8000618c:	8e4080e7          	jalr	-1820(ra) # 80006a6c <panic>

0000000080006190 <trapinit>:
    80006190:	ff010113          	addi	sp,sp,-16
    80006194:	00813423          	sd	s0,8(sp)
    80006198:	01010413          	addi	s0,sp,16
    8000619c:	00813403          	ld	s0,8(sp)
    800061a0:	00002597          	auipc	a1,0x2
    800061a4:	3f858593          	addi	a1,a1,1016 # 80008598 <CONSOLE_STATUS+0x588>
    800061a8:	00009517          	auipc	a0,0x9
    800061ac:	76850513          	addi	a0,a0,1896 # 8000f910 <tickslock>
    800061b0:	01010113          	addi	sp,sp,16
    800061b4:	00001317          	auipc	t1,0x1
    800061b8:	5c430067          	jr	1476(t1) # 80007778 <initlock>

00000000800061bc <trapinithart>:
    800061bc:	ff010113          	addi	sp,sp,-16
    800061c0:	00813423          	sd	s0,8(sp)
    800061c4:	01010413          	addi	s0,sp,16
    800061c8:	00000797          	auipc	a5,0x0
    800061cc:	2f878793          	addi	a5,a5,760 # 800064c0 <kernelvec>
    800061d0:	10579073          	csrw	stvec,a5
    800061d4:	00813403          	ld	s0,8(sp)
    800061d8:	01010113          	addi	sp,sp,16
    800061dc:	00008067          	ret

00000000800061e0 <usertrap>:
    800061e0:	ff010113          	addi	sp,sp,-16
    800061e4:	00813423          	sd	s0,8(sp)
    800061e8:	01010413          	addi	s0,sp,16
    800061ec:	00813403          	ld	s0,8(sp)
    800061f0:	01010113          	addi	sp,sp,16
    800061f4:	00008067          	ret

00000000800061f8 <usertrapret>:
    800061f8:	ff010113          	addi	sp,sp,-16
    800061fc:	00813423          	sd	s0,8(sp)
    80006200:	01010413          	addi	s0,sp,16
    80006204:	00813403          	ld	s0,8(sp)
    80006208:	01010113          	addi	sp,sp,16
    8000620c:	00008067          	ret

0000000080006210 <kerneltrap>:
    80006210:	fe010113          	addi	sp,sp,-32
    80006214:	00813823          	sd	s0,16(sp)
    80006218:	00113c23          	sd	ra,24(sp)
    8000621c:	00913423          	sd	s1,8(sp)
    80006220:	02010413          	addi	s0,sp,32
    80006224:	142025f3          	csrr	a1,scause
    80006228:	100027f3          	csrr	a5,sstatus
    8000622c:	0027f793          	andi	a5,a5,2
    80006230:	10079c63          	bnez	a5,80006348 <kerneltrap+0x138>
    80006234:	142027f3          	csrr	a5,scause
    80006238:	0207ce63          	bltz	a5,80006274 <kerneltrap+0x64>
    8000623c:	00002517          	auipc	a0,0x2
    80006240:	3a450513          	addi	a0,a0,932 # 800085e0 <CONSOLE_STATUS+0x5d0>
    80006244:	00001097          	auipc	ra,0x1
    80006248:	884080e7          	jalr	-1916(ra) # 80006ac8 <__printf>
    8000624c:	141025f3          	csrr	a1,sepc
    80006250:	14302673          	csrr	a2,stval
    80006254:	00002517          	auipc	a0,0x2
    80006258:	39c50513          	addi	a0,a0,924 # 800085f0 <CONSOLE_STATUS+0x5e0>
    8000625c:	00001097          	auipc	ra,0x1
    80006260:	86c080e7          	jalr	-1940(ra) # 80006ac8 <__printf>
    80006264:	00002517          	auipc	a0,0x2
    80006268:	3a450513          	addi	a0,a0,932 # 80008608 <CONSOLE_STATUS+0x5f8>
    8000626c:	00001097          	auipc	ra,0x1
    80006270:	800080e7          	jalr	-2048(ra) # 80006a6c <panic>
    80006274:	0ff7f713          	andi	a4,a5,255
    80006278:	00900693          	li	a3,9
    8000627c:	04d70063          	beq	a4,a3,800062bc <kerneltrap+0xac>
    80006280:	fff00713          	li	a4,-1
    80006284:	03f71713          	slli	a4,a4,0x3f
    80006288:	00170713          	addi	a4,a4,1
    8000628c:	fae798e3          	bne	a5,a4,8000623c <kerneltrap+0x2c>
    80006290:	00000097          	auipc	ra,0x0
    80006294:	e00080e7          	jalr	-512(ra) # 80006090 <cpuid>
    80006298:	06050663          	beqz	a0,80006304 <kerneltrap+0xf4>
    8000629c:	144027f3          	csrr	a5,sip
    800062a0:	ffd7f793          	andi	a5,a5,-3
    800062a4:	14479073          	csrw	sip,a5
    800062a8:	01813083          	ld	ra,24(sp)
    800062ac:	01013403          	ld	s0,16(sp)
    800062b0:	00813483          	ld	s1,8(sp)
    800062b4:	02010113          	addi	sp,sp,32
    800062b8:	00008067          	ret
    800062bc:	00000097          	auipc	ra,0x0
    800062c0:	3c8080e7          	jalr	968(ra) # 80006684 <plic_claim>
    800062c4:	00a00793          	li	a5,10
    800062c8:	00050493          	mv	s1,a0
    800062cc:	06f50863          	beq	a0,a5,8000633c <kerneltrap+0x12c>
    800062d0:	fc050ce3          	beqz	a0,800062a8 <kerneltrap+0x98>
    800062d4:	00050593          	mv	a1,a0
    800062d8:	00002517          	auipc	a0,0x2
    800062dc:	2e850513          	addi	a0,a0,744 # 800085c0 <CONSOLE_STATUS+0x5b0>
    800062e0:	00000097          	auipc	ra,0x0
    800062e4:	7e8080e7          	jalr	2024(ra) # 80006ac8 <__printf>
    800062e8:	01013403          	ld	s0,16(sp)
    800062ec:	01813083          	ld	ra,24(sp)
    800062f0:	00048513          	mv	a0,s1
    800062f4:	00813483          	ld	s1,8(sp)
    800062f8:	02010113          	addi	sp,sp,32
    800062fc:	00000317          	auipc	t1,0x0
    80006300:	3c030067          	jr	960(t1) # 800066bc <plic_complete>
    80006304:	00009517          	auipc	a0,0x9
    80006308:	60c50513          	addi	a0,a0,1548 # 8000f910 <tickslock>
    8000630c:	00001097          	auipc	ra,0x1
    80006310:	490080e7          	jalr	1168(ra) # 8000779c <acquire>
    80006314:	00004717          	auipc	a4,0x4
    80006318:	46070713          	addi	a4,a4,1120 # 8000a774 <ticks>
    8000631c:	00072783          	lw	a5,0(a4)
    80006320:	00009517          	auipc	a0,0x9
    80006324:	5f050513          	addi	a0,a0,1520 # 8000f910 <tickslock>
    80006328:	0017879b          	addiw	a5,a5,1
    8000632c:	00f72023          	sw	a5,0(a4)
    80006330:	00001097          	auipc	ra,0x1
    80006334:	538080e7          	jalr	1336(ra) # 80007868 <release>
    80006338:	f65ff06f          	j	8000629c <kerneltrap+0x8c>
    8000633c:	00001097          	auipc	ra,0x1
    80006340:	094080e7          	jalr	148(ra) # 800073d0 <uartintr>
    80006344:	fa5ff06f          	j	800062e8 <kerneltrap+0xd8>
    80006348:	00002517          	auipc	a0,0x2
    8000634c:	25850513          	addi	a0,a0,600 # 800085a0 <CONSOLE_STATUS+0x590>
    80006350:	00000097          	auipc	ra,0x0
    80006354:	71c080e7          	jalr	1820(ra) # 80006a6c <panic>

0000000080006358 <clockintr>:
    80006358:	fe010113          	addi	sp,sp,-32
    8000635c:	00813823          	sd	s0,16(sp)
    80006360:	00913423          	sd	s1,8(sp)
    80006364:	00113c23          	sd	ra,24(sp)
    80006368:	02010413          	addi	s0,sp,32
    8000636c:	00009497          	auipc	s1,0x9
    80006370:	5a448493          	addi	s1,s1,1444 # 8000f910 <tickslock>
    80006374:	00048513          	mv	a0,s1
    80006378:	00001097          	auipc	ra,0x1
    8000637c:	424080e7          	jalr	1060(ra) # 8000779c <acquire>
    80006380:	00004717          	auipc	a4,0x4
    80006384:	3f470713          	addi	a4,a4,1012 # 8000a774 <ticks>
    80006388:	00072783          	lw	a5,0(a4)
    8000638c:	01013403          	ld	s0,16(sp)
    80006390:	01813083          	ld	ra,24(sp)
    80006394:	00048513          	mv	a0,s1
    80006398:	0017879b          	addiw	a5,a5,1
    8000639c:	00813483          	ld	s1,8(sp)
    800063a0:	00f72023          	sw	a5,0(a4)
    800063a4:	02010113          	addi	sp,sp,32
    800063a8:	00001317          	auipc	t1,0x1
    800063ac:	4c030067          	jr	1216(t1) # 80007868 <release>

00000000800063b0 <devintr>:
    800063b0:	142027f3          	csrr	a5,scause
    800063b4:	00000513          	li	a0,0
    800063b8:	0007c463          	bltz	a5,800063c0 <devintr+0x10>
    800063bc:	00008067          	ret
    800063c0:	fe010113          	addi	sp,sp,-32
    800063c4:	00813823          	sd	s0,16(sp)
    800063c8:	00113c23          	sd	ra,24(sp)
    800063cc:	00913423          	sd	s1,8(sp)
    800063d0:	02010413          	addi	s0,sp,32
    800063d4:	0ff7f713          	andi	a4,a5,255
    800063d8:	00900693          	li	a3,9
    800063dc:	04d70c63          	beq	a4,a3,80006434 <devintr+0x84>
    800063e0:	fff00713          	li	a4,-1
    800063e4:	03f71713          	slli	a4,a4,0x3f
    800063e8:	00170713          	addi	a4,a4,1
    800063ec:	00e78c63          	beq	a5,a4,80006404 <devintr+0x54>
    800063f0:	01813083          	ld	ra,24(sp)
    800063f4:	01013403          	ld	s0,16(sp)
    800063f8:	00813483          	ld	s1,8(sp)
    800063fc:	02010113          	addi	sp,sp,32
    80006400:	00008067          	ret
    80006404:	00000097          	auipc	ra,0x0
    80006408:	c8c080e7          	jalr	-884(ra) # 80006090 <cpuid>
    8000640c:	06050663          	beqz	a0,80006478 <devintr+0xc8>
    80006410:	144027f3          	csrr	a5,sip
    80006414:	ffd7f793          	andi	a5,a5,-3
    80006418:	14479073          	csrw	sip,a5
    8000641c:	01813083          	ld	ra,24(sp)
    80006420:	01013403          	ld	s0,16(sp)
    80006424:	00813483          	ld	s1,8(sp)
    80006428:	00200513          	li	a0,2
    8000642c:	02010113          	addi	sp,sp,32
    80006430:	00008067          	ret
    80006434:	00000097          	auipc	ra,0x0
    80006438:	250080e7          	jalr	592(ra) # 80006684 <plic_claim>
    8000643c:	00a00793          	li	a5,10
    80006440:	00050493          	mv	s1,a0
    80006444:	06f50663          	beq	a0,a5,800064b0 <devintr+0x100>
    80006448:	00100513          	li	a0,1
    8000644c:	fa0482e3          	beqz	s1,800063f0 <devintr+0x40>
    80006450:	00048593          	mv	a1,s1
    80006454:	00002517          	auipc	a0,0x2
    80006458:	16c50513          	addi	a0,a0,364 # 800085c0 <CONSOLE_STATUS+0x5b0>
    8000645c:	00000097          	auipc	ra,0x0
    80006460:	66c080e7          	jalr	1644(ra) # 80006ac8 <__printf>
    80006464:	00048513          	mv	a0,s1
    80006468:	00000097          	auipc	ra,0x0
    8000646c:	254080e7          	jalr	596(ra) # 800066bc <plic_complete>
    80006470:	00100513          	li	a0,1
    80006474:	f7dff06f          	j	800063f0 <devintr+0x40>
    80006478:	00009517          	auipc	a0,0x9
    8000647c:	49850513          	addi	a0,a0,1176 # 8000f910 <tickslock>
    80006480:	00001097          	auipc	ra,0x1
    80006484:	31c080e7          	jalr	796(ra) # 8000779c <acquire>
    80006488:	00004717          	auipc	a4,0x4
    8000648c:	2ec70713          	addi	a4,a4,748 # 8000a774 <ticks>
    80006490:	00072783          	lw	a5,0(a4)
    80006494:	00009517          	auipc	a0,0x9
    80006498:	47c50513          	addi	a0,a0,1148 # 8000f910 <tickslock>
    8000649c:	0017879b          	addiw	a5,a5,1
    800064a0:	00f72023          	sw	a5,0(a4)
    800064a4:	00001097          	auipc	ra,0x1
    800064a8:	3c4080e7          	jalr	964(ra) # 80007868 <release>
    800064ac:	f65ff06f          	j	80006410 <devintr+0x60>
    800064b0:	00001097          	auipc	ra,0x1
    800064b4:	f20080e7          	jalr	-224(ra) # 800073d0 <uartintr>
    800064b8:	fadff06f          	j	80006464 <devintr+0xb4>
    800064bc:	0000                	unimp
	...

00000000800064c0 <kernelvec>:
    800064c0:	f0010113          	addi	sp,sp,-256
    800064c4:	00113023          	sd	ra,0(sp)
    800064c8:	00213423          	sd	sp,8(sp)
    800064cc:	00313823          	sd	gp,16(sp)
    800064d0:	00413c23          	sd	tp,24(sp)
    800064d4:	02513023          	sd	t0,32(sp)
    800064d8:	02613423          	sd	t1,40(sp)
    800064dc:	02713823          	sd	t2,48(sp)
    800064e0:	02813c23          	sd	s0,56(sp)
    800064e4:	04913023          	sd	s1,64(sp)
    800064e8:	04a13423          	sd	a0,72(sp)
    800064ec:	04b13823          	sd	a1,80(sp)
    800064f0:	04c13c23          	sd	a2,88(sp)
    800064f4:	06d13023          	sd	a3,96(sp)
    800064f8:	06e13423          	sd	a4,104(sp)
    800064fc:	06f13823          	sd	a5,112(sp)
    80006500:	07013c23          	sd	a6,120(sp)
    80006504:	09113023          	sd	a7,128(sp)
    80006508:	09213423          	sd	s2,136(sp)
    8000650c:	09313823          	sd	s3,144(sp)
    80006510:	09413c23          	sd	s4,152(sp)
    80006514:	0b513023          	sd	s5,160(sp)
    80006518:	0b613423          	sd	s6,168(sp)
    8000651c:	0b713823          	sd	s7,176(sp)
    80006520:	0b813c23          	sd	s8,184(sp)
    80006524:	0d913023          	sd	s9,192(sp)
    80006528:	0da13423          	sd	s10,200(sp)
    8000652c:	0db13823          	sd	s11,208(sp)
    80006530:	0dc13c23          	sd	t3,216(sp)
    80006534:	0fd13023          	sd	t4,224(sp)
    80006538:	0fe13423          	sd	t5,232(sp)
    8000653c:	0ff13823          	sd	t6,240(sp)
    80006540:	cd1ff0ef          	jal	ra,80006210 <kerneltrap>
    80006544:	00013083          	ld	ra,0(sp)
    80006548:	00813103          	ld	sp,8(sp)
    8000654c:	01013183          	ld	gp,16(sp)
    80006550:	02013283          	ld	t0,32(sp)
    80006554:	02813303          	ld	t1,40(sp)
    80006558:	03013383          	ld	t2,48(sp)
    8000655c:	03813403          	ld	s0,56(sp)
    80006560:	04013483          	ld	s1,64(sp)
    80006564:	04813503          	ld	a0,72(sp)
    80006568:	05013583          	ld	a1,80(sp)
    8000656c:	05813603          	ld	a2,88(sp)
    80006570:	06013683          	ld	a3,96(sp)
    80006574:	06813703          	ld	a4,104(sp)
    80006578:	07013783          	ld	a5,112(sp)
    8000657c:	07813803          	ld	a6,120(sp)
    80006580:	08013883          	ld	a7,128(sp)
    80006584:	08813903          	ld	s2,136(sp)
    80006588:	09013983          	ld	s3,144(sp)
    8000658c:	09813a03          	ld	s4,152(sp)
    80006590:	0a013a83          	ld	s5,160(sp)
    80006594:	0a813b03          	ld	s6,168(sp)
    80006598:	0b013b83          	ld	s7,176(sp)
    8000659c:	0b813c03          	ld	s8,184(sp)
    800065a0:	0c013c83          	ld	s9,192(sp)
    800065a4:	0c813d03          	ld	s10,200(sp)
    800065a8:	0d013d83          	ld	s11,208(sp)
    800065ac:	0d813e03          	ld	t3,216(sp)
    800065b0:	0e013e83          	ld	t4,224(sp)
    800065b4:	0e813f03          	ld	t5,232(sp)
    800065b8:	0f013f83          	ld	t6,240(sp)
    800065bc:	10010113          	addi	sp,sp,256
    800065c0:	10200073          	sret
    800065c4:	00000013          	nop
    800065c8:	00000013          	nop
    800065cc:	00000013          	nop

00000000800065d0 <timervec>:
    800065d0:	34051573          	csrrw	a0,mscratch,a0
    800065d4:	00b53023          	sd	a1,0(a0)
    800065d8:	00c53423          	sd	a2,8(a0)
    800065dc:	00d53823          	sd	a3,16(a0)
    800065e0:	01853583          	ld	a1,24(a0)
    800065e4:	02053603          	ld	a2,32(a0)
    800065e8:	0005b683          	ld	a3,0(a1)
    800065ec:	00c686b3          	add	a3,a3,a2
    800065f0:	00d5b023          	sd	a3,0(a1)
    800065f4:	00200593          	li	a1,2
    800065f8:	14459073          	csrw	sip,a1
    800065fc:	01053683          	ld	a3,16(a0)
    80006600:	00853603          	ld	a2,8(a0)
    80006604:	00053583          	ld	a1,0(a0)
    80006608:	34051573          	csrrw	a0,mscratch,a0
    8000660c:	30200073          	mret

0000000080006610 <plicinit>:
    80006610:	ff010113          	addi	sp,sp,-16
    80006614:	00813423          	sd	s0,8(sp)
    80006618:	01010413          	addi	s0,sp,16
    8000661c:	00813403          	ld	s0,8(sp)
    80006620:	0c0007b7          	lui	a5,0xc000
    80006624:	00100713          	li	a4,1
    80006628:	02e7a423          	sw	a4,40(a5) # c000028 <_entry-0x73ffffd8>
    8000662c:	00e7a223          	sw	a4,4(a5)
    80006630:	01010113          	addi	sp,sp,16
    80006634:	00008067          	ret

0000000080006638 <plicinithart>:
    80006638:	ff010113          	addi	sp,sp,-16
    8000663c:	00813023          	sd	s0,0(sp)
    80006640:	00113423          	sd	ra,8(sp)
    80006644:	01010413          	addi	s0,sp,16
    80006648:	00000097          	auipc	ra,0x0
    8000664c:	a48080e7          	jalr	-1464(ra) # 80006090 <cpuid>
    80006650:	0085171b          	slliw	a4,a0,0x8
    80006654:	0c0027b7          	lui	a5,0xc002
    80006658:	00e787b3          	add	a5,a5,a4
    8000665c:	40200713          	li	a4,1026
    80006660:	08e7a023          	sw	a4,128(a5) # c002080 <_entry-0x73ffdf80>
    80006664:	00813083          	ld	ra,8(sp)
    80006668:	00013403          	ld	s0,0(sp)
    8000666c:	00d5151b          	slliw	a0,a0,0xd
    80006670:	0c2017b7          	lui	a5,0xc201
    80006674:	00a78533          	add	a0,a5,a0
    80006678:	00052023          	sw	zero,0(a0)
    8000667c:	01010113          	addi	sp,sp,16
    80006680:	00008067          	ret

0000000080006684 <plic_claim>:
    80006684:	ff010113          	addi	sp,sp,-16
    80006688:	00813023          	sd	s0,0(sp)
    8000668c:	00113423          	sd	ra,8(sp)
    80006690:	01010413          	addi	s0,sp,16
    80006694:	00000097          	auipc	ra,0x0
    80006698:	9fc080e7          	jalr	-1540(ra) # 80006090 <cpuid>
    8000669c:	00813083          	ld	ra,8(sp)
    800066a0:	00013403          	ld	s0,0(sp)
    800066a4:	00d5151b          	slliw	a0,a0,0xd
    800066a8:	0c2017b7          	lui	a5,0xc201
    800066ac:	00a78533          	add	a0,a5,a0
    800066b0:	00452503          	lw	a0,4(a0)
    800066b4:	01010113          	addi	sp,sp,16
    800066b8:	00008067          	ret

00000000800066bc <plic_complete>:
    800066bc:	fe010113          	addi	sp,sp,-32
    800066c0:	00813823          	sd	s0,16(sp)
    800066c4:	00913423          	sd	s1,8(sp)
    800066c8:	00113c23          	sd	ra,24(sp)
    800066cc:	02010413          	addi	s0,sp,32
    800066d0:	00050493          	mv	s1,a0
    800066d4:	00000097          	auipc	ra,0x0
    800066d8:	9bc080e7          	jalr	-1604(ra) # 80006090 <cpuid>
    800066dc:	01813083          	ld	ra,24(sp)
    800066e0:	01013403          	ld	s0,16(sp)
    800066e4:	00d5179b          	slliw	a5,a0,0xd
    800066e8:	0c201737          	lui	a4,0xc201
    800066ec:	00f707b3          	add	a5,a4,a5
    800066f0:	0097a223          	sw	s1,4(a5) # c201004 <_entry-0x73dfeffc>
    800066f4:	00813483          	ld	s1,8(sp)
    800066f8:	02010113          	addi	sp,sp,32
    800066fc:	00008067          	ret

0000000080006700 <consolewrite>:
    80006700:	fb010113          	addi	sp,sp,-80
    80006704:	04813023          	sd	s0,64(sp)
    80006708:	04113423          	sd	ra,72(sp)
    8000670c:	02913c23          	sd	s1,56(sp)
    80006710:	03213823          	sd	s2,48(sp)
    80006714:	03313423          	sd	s3,40(sp)
    80006718:	03413023          	sd	s4,32(sp)
    8000671c:	01513c23          	sd	s5,24(sp)
    80006720:	05010413          	addi	s0,sp,80
    80006724:	06c05c63          	blez	a2,8000679c <consolewrite+0x9c>
    80006728:	00060993          	mv	s3,a2
    8000672c:	00050a13          	mv	s4,a0
    80006730:	00058493          	mv	s1,a1
    80006734:	00000913          	li	s2,0
    80006738:	fff00a93          	li	s5,-1
    8000673c:	01c0006f          	j	80006758 <consolewrite+0x58>
    80006740:	fbf44503          	lbu	a0,-65(s0)
    80006744:	0019091b          	addiw	s2,s2,1
    80006748:	00148493          	addi	s1,s1,1
    8000674c:	00001097          	auipc	ra,0x1
    80006750:	a9c080e7          	jalr	-1380(ra) # 800071e8 <uartputc>
    80006754:	03298063          	beq	s3,s2,80006774 <consolewrite+0x74>
    80006758:	00048613          	mv	a2,s1
    8000675c:	00100693          	li	a3,1
    80006760:	000a0593          	mv	a1,s4
    80006764:	fbf40513          	addi	a0,s0,-65
    80006768:	00000097          	auipc	ra,0x0
    8000676c:	9e0080e7          	jalr	-1568(ra) # 80006148 <either_copyin>
    80006770:	fd5518e3          	bne	a0,s5,80006740 <consolewrite+0x40>
    80006774:	04813083          	ld	ra,72(sp)
    80006778:	04013403          	ld	s0,64(sp)
    8000677c:	03813483          	ld	s1,56(sp)
    80006780:	02813983          	ld	s3,40(sp)
    80006784:	02013a03          	ld	s4,32(sp)
    80006788:	01813a83          	ld	s5,24(sp)
    8000678c:	00090513          	mv	a0,s2
    80006790:	03013903          	ld	s2,48(sp)
    80006794:	05010113          	addi	sp,sp,80
    80006798:	00008067          	ret
    8000679c:	00000913          	li	s2,0
    800067a0:	fd5ff06f          	j	80006774 <consolewrite+0x74>

00000000800067a4 <consoleread>:
    800067a4:	f9010113          	addi	sp,sp,-112
    800067a8:	06813023          	sd	s0,96(sp)
    800067ac:	04913c23          	sd	s1,88(sp)
    800067b0:	05213823          	sd	s2,80(sp)
    800067b4:	05313423          	sd	s3,72(sp)
    800067b8:	05413023          	sd	s4,64(sp)
    800067bc:	03513c23          	sd	s5,56(sp)
    800067c0:	03613823          	sd	s6,48(sp)
    800067c4:	03713423          	sd	s7,40(sp)
    800067c8:	03813023          	sd	s8,32(sp)
    800067cc:	06113423          	sd	ra,104(sp)
    800067d0:	01913c23          	sd	s9,24(sp)
    800067d4:	07010413          	addi	s0,sp,112
    800067d8:	00060b93          	mv	s7,a2
    800067dc:	00050913          	mv	s2,a0
    800067e0:	00058c13          	mv	s8,a1
    800067e4:	00060b1b          	sext.w	s6,a2
    800067e8:	00009497          	auipc	s1,0x9
    800067ec:	15048493          	addi	s1,s1,336 # 8000f938 <cons>
    800067f0:	00400993          	li	s3,4
    800067f4:	fff00a13          	li	s4,-1
    800067f8:	00a00a93          	li	s5,10
    800067fc:	05705e63          	blez	s7,80006858 <consoleread+0xb4>
    80006800:	09c4a703          	lw	a4,156(s1)
    80006804:	0984a783          	lw	a5,152(s1)
    80006808:	0007071b          	sext.w	a4,a4
    8000680c:	08e78463          	beq	a5,a4,80006894 <consoleread+0xf0>
    80006810:	07f7f713          	andi	a4,a5,127
    80006814:	00e48733          	add	a4,s1,a4
    80006818:	01874703          	lbu	a4,24(a4) # c201018 <_entry-0x73dfefe8>
    8000681c:	0017869b          	addiw	a3,a5,1
    80006820:	08d4ac23          	sw	a3,152(s1)
    80006824:	00070c9b          	sext.w	s9,a4
    80006828:	0b370663          	beq	a4,s3,800068d4 <consoleread+0x130>
    8000682c:	00100693          	li	a3,1
    80006830:	f9f40613          	addi	a2,s0,-97
    80006834:	000c0593          	mv	a1,s8
    80006838:	00090513          	mv	a0,s2
    8000683c:	f8e40fa3          	sb	a4,-97(s0)
    80006840:	00000097          	auipc	ra,0x0
    80006844:	8bc080e7          	jalr	-1860(ra) # 800060fc <either_copyout>
    80006848:	01450863          	beq	a0,s4,80006858 <consoleread+0xb4>
    8000684c:	001c0c13          	addi	s8,s8,1
    80006850:	fffb8b9b          	addiw	s7,s7,-1
    80006854:	fb5c94e3          	bne	s9,s5,800067fc <consoleread+0x58>
    80006858:	000b851b          	sext.w	a0,s7
    8000685c:	06813083          	ld	ra,104(sp)
    80006860:	06013403          	ld	s0,96(sp)
    80006864:	05813483          	ld	s1,88(sp)
    80006868:	05013903          	ld	s2,80(sp)
    8000686c:	04813983          	ld	s3,72(sp)
    80006870:	04013a03          	ld	s4,64(sp)
    80006874:	03813a83          	ld	s5,56(sp)
    80006878:	02813b83          	ld	s7,40(sp)
    8000687c:	02013c03          	ld	s8,32(sp)
    80006880:	01813c83          	ld	s9,24(sp)
    80006884:	40ab053b          	subw	a0,s6,a0
    80006888:	03013b03          	ld	s6,48(sp)
    8000688c:	07010113          	addi	sp,sp,112
    80006890:	00008067          	ret
    80006894:	00001097          	auipc	ra,0x1
    80006898:	1d8080e7          	jalr	472(ra) # 80007a6c <push_on>
    8000689c:	0984a703          	lw	a4,152(s1)
    800068a0:	09c4a783          	lw	a5,156(s1)
    800068a4:	0007879b          	sext.w	a5,a5
    800068a8:	fef70ce3          	beq	a4,a5,800068a0 <consoleread+0xfc>
    800068ac:	00001097          	auipc	ra,0x1
    800068b0:	234080e7          	jalr	564(ra) # 80007ae0 <pop_on>
    800068b4:	0984a783          	lw	a5,152(s1)
    800068b8:	07f7f713          	andi	a4,a5,127
    800068bc:	00e48733          	add	a4,s1,a4
    800068c0:	01874703          	lbu	a4,24(a4)
    800068c4:	0017869b          	addiw	a3,a5,1
    800068c8:	08d4ac23          	sw	a3,152(s1)
    800068cc:	00070c9b          	sext.w	s9,a4
    800068d0:	f5371ee3          	bne	a4,s3,8000682c <consoleread+0x88>
    800068d4:	000b851b          	sext.w	a0,s7
    800068d8:	f96bf2e3          	bgeu	s7,s6,8000685c <consoleread+0xb8>
    800068dc:	08f4ac23          	sw	a5,152(s1)
    800068e0:	f7dff06f          	j	8000685c <consoleread+0xb8>

00000000800068e4 <consputc>:
    800068e4:	10000793          	li	a5,256
    800068e8:	00f50663          	beq	a0,a5,800068f4 <consputc+0x10>
    800068ec:	00001317          	auipc	t1,0x1
    800068f0:	9f430067          	jr	-1548(t1) # 800072e0 <uartputc_sync>
    800068f4:	ff010113          	addi	sp,sp,-16
    800068f8:	00113423          	sd	ra,8(sp)
    800068fc:	00813023          	sd	s0,0(sp)
    80006900:	01010413          	addi	s0,sp,16
    80006904:	00800513          	li	a0,8
    80006908:	00001097          	auipc	ra,0x1
    8000690c:	9d8080e7          	jalr	-1576(ra) # 800072e0 <uartputc_sync>
    80006910:	02000513          	li	a0,32
    80006914:	00001097          	auipc	ra,0x1
    80006918:	9cc080e7          	jalr	-1588(ra) # 800072e0 <uartputc_sync>
    8000691c:	00013403          	ld	s0,0(sp)
    80006920:	00813083          	ld	ra,8(sp)
    80006924:	00800513          	li	a0,8
    80006928:	01010113          	addi	sp,sp,16
    8000692c:	00001317          	auipc	t1,0x1
    80006930:	9b430067          	jr	-1612(t1) # 800072e0 <uartputc_sync>

0000000080006934 <consoleintr>:
    80006934:	fe010113          	addi	sp,sp,-32
    80006938:	00813823          	sd	s0,16(sp)
    8000693c:	00913423          	sd	s1,8(sp)
    80006940:	01213023          	sd	s2,0(sp)
    80006944:	00113c23          	sd	ra,24(sp)
    80006948:	02010413          	addi	s0,sp,32
    8000694c:	00009917          	auipc	s2,0x9
    80006950:	fec90913          	addi	s2,s2,-20 # 8000f938 <cons>
    80006954:	00050493          	mv	s1,a0
    80006958:	00090513          	mv	a0,s2
    8000695c:	00001097          	auipc	ra,0x1
    80006960:	e40080e7          	jalr	-448(ra) # 8000779c <acquire>
    80006964:	02048c63          	beqz	s1,8000699c <consoleintr+0x68>
    80006968:	0a092783          	lw	a5,160(s2)
    8000696c:	09892703          	lw	a4,152(s2)
    80006970:	07f00693          	li	a3,127
    80006974:	40e7873b          	subw	a4,a5,a4
    80006978:	02e6e263          	bltu	a3,a4,8000699c <consoleintr+0x68>
    8000697c:	00d00713          	li	a4,13
    80006980:	04e48063          	beq	s1,a4,800069c0 <consoleintr+0x8c>
    80006984:	07f7f713          	andi	a4,a5,127
    80006988:	00e90733          	add	a4,s2,a4
    8000698c:	0017879b          	addiw	a5,a5,1
    80006990:	0af92023          	sw	a5,160(s2)
    80006994:	00970c23          	sb	s1,24(a4)
    80006998:	08f92e23          	sw	a5,156(s2)
    8000699c:	01013403          	ld	s0,16(sp)
    800069a0:	01813083          	ld	ra,24(sp)
    800069a4:	00813483          	ld	s1,8(sp)
    800069a8:	00013903          	ld	s2,0(sp)
    800069ac:	00009517          	auipc	a0,0x9
    800069b0:	f8c50513          	addi	a0,a0,-116 # 8000f938 <cons>
    800069b4:	02010113          	addi	sp,sp,32
    800069b8:	00001317          	auipc	t1,0x1
    800069bc:	eb030067          	jr	-336(t1) # 80007868 <release>
    800069c0:	00a00493          	li	s1,10
    800069c4:	fc1ff06f          	j	80006984 <consoleintr+0x50>

00000000800069c8 <consoleinit>:
    800069c8:	fe010113          	addi	sp,sp,-32
    800069cc:	00113c23          	sd	ra,24(sp)
    800069d0:	00813823          	sd	s0,16(sp)
    800069d4:	00913423          	sd	s1,8(sp)
    800069d8:	02010413          	addi	s0,sp,32
    800069dc:	00009497          	auipc	s1,0x9
    800069e0:	f5c48493          	addi	s1,s1,-164 # 8000f938 <cons>
    800069e4:	00048513          	mv	a0,s1
    800069e8:	00002597          	auipc	a1,0x2
    800069ec:	c3058593          	addi	a1,a1,-976 # 80008618 <CONSOLE_STATUS+0x608>
    800069f0:	00001097          	auipc	ra,0x1
    800069f4:	d88080e7          	jalr	-632(ra) # 80007778 <initlock>
    800069f8:	00000097          	auipc	ra,0x0
    800069fc:	7ac080e7          	jalr	1964(ra) # 800071a4 <uartinit>
    80006a00:	01813083          	ld	ra,24(sp)
    80006a04:	01013403          	ld	s0,16(sp)
    80006a08:	00000797          	auipc	a5,0x0
    80006a0c:	d9c78793          	addi	a5,a5,-612 # 800067a4 <consoleread>
    80006a10:	0af4bc23          	sd	a5,184(s1)
    80006a14:	00000797          	auipc	a5,0x0
    80006a18:	cec78793          	addi	a5,a5,-788 # 80006700 <consolewrite>
    80006a1c:	0cf4b023          	sd	a5,192(s1)
    80006a20:	00813483          	ld	s1,8(sp)
    80006a24:	02010113          	addi	sp,sp,32
    80006a28:	00008067          	ret

0000000080006a2c <console_read>:
    80006a2c:	ff010113          	addi	sp,sp,-16
    80006a30:	00813423          	sd	s0,8(sp)
    80006a34:	01010413          	addi	s0,sp,16
    80006a38:	00813403          	ld	s0,8(sp)
    80006a3c:	00009317          	auipc	t1,0x9
    80006a40:	fb433303          	ld	t1,-76(t1) # 8000f9f0 <devsw+0x10>
    80006a44:	01010113          	addi	sp,sp,16
    80006a48:	00030067          	jr	t1

0000000080006a4c <console_write>:
    80006a4c:	ff010113          	addi	sp,sp,-16
    80006a50:	00813423          	sd	s0,8(sp)
    80006a54:	01010413          	addi	s0,sp,16
    80006a58:	00813403          	ld	s0,8(sp)
    80006a5c:	00009317          	auipc	t1,0x9
    80006a60:	f9c33303          	ld	t1,-100(t1) # 8000f9f8 <devsw+0x18>
    80006a64:	01010113          	addi	sp,sp,16
    80006a68:	00030067          	jr	t1

0000000080006a6c <panic>:
    80006a6c:	fe010113          	addi	sp,sp,-32
    80006a70:	00113c23          	sd	ra,24(sp)
    80006a74:	00813823          	sd	s0,16(sp)
    80006a78:	00913423          	sd	s1,8(sp)
    80006a7c:	02010413          	addi	s0,sp,32
    80006a80:	00050493          	mv	s1,a0
    80006a84:	00002517          	auipc	a0,0x2
    80006a88:	b9c50513          	addi	a0,a0,-1124 # 80008620 <CONSOLE_STATUS+0x610>
    80006a8c:	00009797          	auipc	a5,0x9
    80006a90:	0007a623          	sw	zero,12(a5) # 8000fa98 <pr+0x18>
    80006a94:	00000097          	auipc	ra,0x0
    80006a98:	034080e7          	jalr	52(ra) # 80006ac8 <__printf>
    80006a9c:	00048513          	mv	a0,s1
    80006aa0:	00000097          	auipc	ra,0x0
    80006aa4:	028080e7          	jalr	40(ra) # 80006ac8 <__printf>
    80006aa8:	00002517          	auipc	a0,0x2
    80006aac:	b5850513          	addi	a0,a0,-1192 # 80008600 <CONSOLE_STATUS+0x5f0>
    80006ab0:	00000097          	auipc	ra,0x0
    80006ab4:	018080e7          	jalr	24(ra) # 80006ac8 <__printf>
    80006ab8:	00100793          	li	a5,1
    80006abc:	00004717          	auipc	a4,0x4
    80006ac0:	caf72e23          	sw	a5,-836(a4) # 8000a778 <panicked>
    80006ac4:	0000006f          	j	80006ac4 <panic+0x58>

0000000080006ac8 <__printf>:
    80006ac8:	f3010113          	addi	sp,sp,-208
    80006acc:	08813023          	sd	s0,128(sp)
    80006ad0:	07313423          	sd	s3,104(sp)
    80006ad4:	09010413          	addi	s0,sp,144
    80006ad8:	05813023          	sd	s8,64(sp)
    80006adc:	08113423          	sd	ra,136(sp)
    80006ae0:	06913c23          	sd	s1,120(sp)
    80006ae4:	07213823          	sd	s2,112(sp)
    80006ae8:	07413023          	sd	s4,96(sp)
    80006aec:	05513c23          	sd	s5,88(sp)
    80006af0:	05613823          	sd	s6,80(sp)
    80006af4:	05713423          	sd	s7,72(sp)
    80006af8:	03913c23          	sd	s9,56(sp)
    80006afc:	03a13823          	sd	s10,48(sp)
    80006b00:	03b13423          	sd	s11,40(sp)
    80006b04:	00009317          	auipc	t1,0x9
    80006b08:	f7c30313          	addi	t1,t1,-132 # 8000fa80 <pr>
    80006b0c:	01832c03          	lw	s8,24(t1)
    80006b10:	00b43423          	sd	a1,8(s0)
    80006b14:	00c43823          	sd	a2,16(s0)
    80006b18:	00d43c23          	sd	a3,24(s0)
    80006b1c:	02e43023          	sd	a4,32(s0)
    80006b20:	02f43423          	sd	a5,40(s0)
    80006b24:	03043823          	sd	a6,48(s0)
    80006b28:	03143c23          	sd	a7,56(s0)
    80006b2c:	00050993          	mv	s3,a0
    80006b30:	4a0c1663          	bnez	s8,80006fdc <__printf+0x514>
    80006b34:	60098c63          	beqz	s3,8000714c <__printf+0x684>
    80006b38:	0009c503          	lbu	a0,0(s3)
    80006b3c:	00840793          	addi	a5,s0,8
    80006b40:	f6f43c23          	sd	a5,-136(s0)
    80006b44:	00000493          	li	s1,0
    80006b48:	22050063          	beqz	a0,80006d68 <__printf+0x2a0>
    80006b4c:	00002a37          	lui	s4,0x2
    80006b50:	00018ab7          	lui	s5,0x18
    80006b54:	000f4b37          	lui	s6,0xf4
    80006b58:	00989bb7          	lui	s7,0x989
    80006b5c:	70fa0a13          	addi	s4,s4,1807 # 270f <_entry-0x7fffd8f1>
    80006b60:	69fa8a93          	addi	s5,s5,1695 # 1869f <_entry-0x7ffe7961>
    80006b64:	23fb0b13          	addi	s6,s6,575 # f423f <_entry-0x7ff0bdc1>
    80006b68:	67fb8b93          	addi	s7,s7,1663 # 98967f <_entry-0x7f676981>
    80006b6c:	00148c9b          	addiw	s9,s1,1
    80006b70:	02500793          	li	a5,37
    80006b74:	01998933          	add	s2,s3,s9
    80006b78:	38f51263          	bne	a0,a5,80006efc <__printf+0x434>
    80006b7c:	00094783          	lbu	a5,0(s2)
    80006b80:	00078c9b          	sext.w	s9,a5
    80006b84:	1e078263          	beqz	a5,80006d68 <__printf+0x2a0>
    80006b88:	0024849b          	addiw	s1,s1,2
    80006b8c:	07000713          	li	a4,112
    80006b90:	00998933          	add	s2,s3,s1
    80006b94:	38e78a63          	beq	a5,a4,80006f28 <__printf+0x460>
    80006b98:	20f76863          	bltu	a4,a5,80006da8 <__printf+0x2e0>
    80006b9c:	42a78863          	beq	a5,a0,80006fcc <__printf+0x504>
    80006ba0:	06400713          	li	a4,100
    80006ba4:	40e79663          	bne	a5,a4,80006fb0 <__printf+0x4e8>
    80006ba8:	f7843783          	ld	a5,-136(s0)
    80006bac:	0007a603          	lw	a2,0(a5)
    80006bb0:	00878793          	addi	a5,a5,8
    80006bb4:	f6f43c23          	sd	a5,-136(s0)
    80006bb8:	42064a63          	bltz	a2,80006fec <__printf+0x524>
    80006bbc:	00a00713          	li	a4,10
    80006bc0:	02e677bb          	remuw	a5,a2,a4
    80006bc4:	00002d97          	auipc	s11,0x2
    80006bc8:	a84d8d93          	addi	s11,s11,-1404 # 80008648 <digits>
    80006bcc:	00900593          	li	a1,9
    80006bd0:	0006051b          	sext.w	a0,a2
    80006bd4:	00000c93          	li	s9,0
    80006bd8:	02079793          	slli	a5,a5,0x20
    80006bdc:	0207d793          	srli	a5,a5,0x20
    80006be0:	00fd87b3          	add	a5,s11,a5
    80006be4:	0007c783          	lbu	a5,0(a5)
    80006be8:	02e656bb          	divuw	a3,a2,a4
    80006bec:	f8f40023          	sb	a5,-128(s0)
    80006bf0:	14c5d863          	bge	a1,a2,80006d40 <__printf+0x278>
    80006bf4:	06300593          	li	a1,99
    80006bf8:	00100c93          	li	s9,1
    80006bfc:	02e6f7bb          	remuw	a5,a3,a4
    80006c00:	02079793          	slli	a5,a5,0x20
    80006c04:	0207d793          	srli	a5,a5,0x20
    80006c08:	00fd87b3          	add	a5,s11,a5
    80006c0c:	0007c783          	lbu	a5,0(a5)
    80006c10:	02e6d73b          	divuw	a4,a3,a4
    80006c14:	f8f400a3          	sb	a5,-127(s0)
    80006c18:	12a5f463          	bgeu	a1,a0,80006d40 <__printf+0x278>
    80006c1c:	00a00693          	li	a3,10
    80006c20:	00900593          	li	a1,9
    80006c24:	02d777bb          	remuw	a5,a4,a3
    80006c28:	02079793          	slli	a5,a5,0x20
    80006c2c:	0207d793          	srli	a5,a5,0x20
    80006c30:	00fd87b3          	add	a5,s11,a5
    80006c34:	0007c503          	lbu	a0,0(a5)
    80006c38:	02d757bb          	divuw	a5,a4,a3
    80006c3c:	f8a40123          	sb	a0,-126(s0)
    80006c40:	48e5f263          	bgeu	a1,a4,800070c4 <__printf+0x5fc>
    80006c44:	06300513          	li	a0,99
    80006c48:	02d7f5bb          	remuw	a1,a5,a3
    80006c4c:	02059593          	slli	a1,a1,0x20
    80006c50:	0205d593          	srli	a1,a1,0x20
    80006c54:	00bd85b3          	add	a1,s11,a1
    80006c58:	0005c583          	lbu	a1,0(a1)
    80006c5c:	02d7d7bb          	divuw	a5,a5,a3
    80006c60:	f8b401a3          	sb	a1,-125(s0)
    80006c64:	48e57263          	bgeu	a0,a4,800070e8 <__printf+0x620>
    80006c68:	3e700513          	li	a0,999
    80006c6c:	02d7f5bb          	remuw	a1,a5,a3
    80006c70:	02059593          	slli	a1,a1,0x20
    80006c74:	0205d593          	srli	a1,a1,0x20
    80006c78:	00bd85b3          	add	a1,s11,a1
    80006c7c:	0005c583          	lbu	a1,0(a1)
    80006c80:	02d7d7bb          	divuw	a5,a5,a3
    80006c84:	f8b40223          	sb	a1,-124(s0)
    80006c88:	46e57663          	bgeu	a0,a4,800070f4 <__printf+0x62c>
    80006c8c:	02d7f5bb          	remuw	a1,a5,a3
    80006c90:	02059593          	slli	a1,a1,0x20
    80006c94:	0205d593          	srli	a1,a1,0x20
    80006c98:	00bd85b3          	add	a1,s11,a1
    80006c9c:	0005c583          	lbu	a1,0(a1)
    80006ca0:	02d7d7bb          	divuw	a5,a5,a3
    80006ca4:	f8b402a3          	sb	a1,-123(s0)
    80006ca8:	46ea7863          	bgeu	s4,a4,80007118 <__printf+0x650>
    80006cac:	02d7f5bb          	remuw	a1,a5,a3
    80006cb0:	02059593          	slli	a1,a1,0x20
    80006cb4:	0205d593          	srli	a1,a1,0x20
    80006cb8:	00bd85b3          	add	a1,s11,a1
    80006cbc:	0005c583          	lbu	a1,0(a1)
    80006cc0:	02d7d7bb          	divuw	a5,a5,a3
    80006cc4:	f8b40323          	sb	a1,-122(s0)
    80006cc8:	3eeaf863          	bgeu	s5,a4,800070b8 <__printf+0x5f0>
    80006ccc:	02d7f5bb          	remuw	a1,a5,a3
    80006cd0:	02059593          	slli	a1,a1,0x20
    80006cd4:	0205d593          	srli	a1,a1,0x20
    80006cd8:	00bd85b3          	add	a1,s11,a1
    80006cdc:	0005c583          	lbu	a1,0(a1)
    80006ce0:	02d7d7bb          	divuw	a5,a5,a3
    80006ce4:	f8b403a3          	sb	a1,-121(s0)
    80006ce8:	42eb7e63          	bgeu	s6,a4,80007124 <__printf+0x65c>
    80006cec:	02d7f5bb          	remuw	a1,a5,a3
    80006cf0:	02059593          	slli	a1,a1,0x20
    80006cf4:	0205d593          	srli	a1,a1,0x20
    80006cf8:	00bd85b3          	add	a1,s11,a1
    80006cfc:	0005c583          	lbu	a1,0(a1)
    80006d00:	02d7d7bb          	divuw	a5,a5,a3
    80006d04:	f8b40423          	sb	a1,-120(s0)
    80006d08:	42ebfc63          	bgeu	s7,a4,80007140 <__printf+0x678>
    80006d0c:	02079793          	slli	a5,a5,0x20
    80006d10:	0207d793          	srli	a5,a5,0x20
    80006d14:	00fd8db3          	add	s11,s11,a5
    80006d18:	000dc703          	lbu	a4,0(s11)
    80006d1c:	00a00793          	li	a5,10
    80006d20:	00900c93          	li	s9,9
    80006d24:	f8e404a3          	sb	a4,-119(s0)
    80006d28:	00065c63          	bgez	a2,80006d40 <__printf+0x278>
    80006d2c:	f9040713          	addi	a4,s0,-112
    80006d30:	00f70733          	add	a4,a4,a5
    80006d34:	02d00693          	li	a3,45
    80006d38:	fed70823          	sb	a3,-16(a4)
    80006d3c:	00078c93          	mv	s9,a5
    80006d40:	f8040793          	addi	a5,s0,-128
    80006d44:	01978cb3          	add	s9,a5,s9
    80006d48:	f7f40d13          	addi	s10,s0,-129
    80006d4c:	000cc503          	lbu	a0,0(s9)
    80006d50:	fffc8c93          	addi	s9,s9,-1
    80006d54:	00000097          	auipc	ra,0x0
    80006d58:	b90080e7          	jalr	-1136(ra) # 800068e4 <consputc>
    80006d5c:	ffac98e3          	bne	s9,s10,80006d4c <__printf+0x284>
    80006d60:	00094503          	lbu	a0,0(s2)
    80006d64:	e00514e3          	bnez	a0,80006b6c <__printf+0xa4>
    80006d68:	1a0c1663          	bnez	s8,80006f14 <__printf+0x44c>
    80006d6c:	08813083          	ld	ra,136(sp)
    80006d70:	08013403          	ld	s0,128(sp)
    80006d74:	07813483          	ld	s1,120(sp)
    80006d78:	07013903          	ld	s2,112(sp)
    80006d7c:	06813983          	ld	s3,104(sp)
    80006d80:	06013a03          	ld	s4,96(sp)
    80006d84:	05813a83          	ld	s5,88(sp)
    80006d88:	05013b03          	ld	s6,80(sp)
    80006d8c:	04813b83          	ld	s7,72(sp)
    80006d90:	04013c03          	ld	s8,64(sp)
    80006d94:	03813c83          	ld	s9,56(sp)
    80006d98:	03013d03          	ld	s10,48(sp)
    80006d9c:	02813d83          	ld	s11,40(sp)
    80006da0:	0d010113          	addi	sp,sp,208
    80006da4:	00008067          	ret
    80006da8:	07300713          	li	a4,115
    80006dac:	1ce78a63          	beq	a5,a4,80006f80 <__printf+0x4b8>
    80006db0:	07800713          	li	a4,120
    80006db4:	1ee79e63          	bne	a5,a4,80006fb0 <__printf+0x4e8>
    80006db8:	f7843783          	ld	a5,-136(s0)
    80006dbc:	0007a703          	lw	a4,0(a5)
    80006dc0:	00878793          	addi	a5,a5,8
    80006dc4:	f6f43c23          	sd	a5,-136(s0)
    80006dc8:	28074263          	bltz	a4,8000704c <__printf+0x584>
    80006dcc:	00002d97          	auipc	s11,0x2
    80006dd0:	87cd8d93          	addi	s11,s11,-1924 # 80008648 <digits>
    80006dd4:	00f77793          	andi	a5,a4,15
    80006dd8:	00fd87b3          	add	a5,s11,a5
    80006ddc:	0007c683          	lbu	a3,0(a5)
    80006de0:	00f00613          	li	a2,15
    80006de4:	0007079b          	sext.w	a5,a4
    80006de8:	f8d40023          	sb	a3,-128(s0)
    80006dec:	0047559b          	srliw	a1,a4,0x4
    80006df0:	0047569b          	srliw	a3,a4,0x4
    80006df4:	00000c93          	li	s9,0
    80006df8:	0ee65063          	bge	a2,a4,80006ed8 <__printf+0x410>
    80006dfc:	00f6f693          	andi	a3,a3,15
    80006e00:	00dd86b3          	add	a3,s11,a3
    80006e04:	0006c683          	lbu	a3,0(a3) # 2004000 <_entry-0x7dffc000>
    80006e08:	0087d79b          	srliw	a5,a5,0x8
    80006e0c:	00100c93          	li	s9,1
    80006e10:	f8d400a3          	sb	a3,-127(s0)
    80006e14:	0cb67263          	bgeu	a2,a1,80006ed8 <__printf+0x410>
    80006e18:	00f7f693          	andi	a3,a5,15
    80006e1c:	00dd86b3          	add	a3,s11,a3
    80006e20:	0006c583          	lbu	a1,0(a3)
    80006e24:	00f00613          	li	a2,15
    80006e28:	0047d69b          	srliw	a3,a5,0x4
    80006e2c:	f8b40123          	sb	a1,-126(s0)
    80006e30:	0047d593          	srli	a1,a5,0x4
    80006e34:	28f67e63          	bgeu	a2,a5,800070d0 <__printf+0x608>
    80006e38:	00f6f693          	andi	a3,a3,15
    80006e3c:	00dd86b3          	add	a3,s11,a3
    80006e40:	0006c503          	lbu	a0,0(a3)
    80006e44:	0087d813          	srli	a6,a5,0x8
    80006e48:	0087d69b          	srliw	a3,a5,0x8
    80006e4c:	f8a401a3          	sb	a0,-125(s0)
    80006e50:	28b67663          	bgeu	a2,a1,800070dc <__printf+0x614>
    80006e54:	00f6f693          	andi	a3,a3,15
    80006e58:	00dd86b3          	add	a3,s11,a3
    80006e5c:	0006c583          	lbu	a1,0(a3)
    80006e60:	00c7d513          	srli	a0,a5,0xc
    80006e64:	00c7d69b          	srliw	a3,a5,0xc
    80006e68:	f8b40223          	sb	a1,-124(s0)
    80006e6c:	29067a63          	bgeu	a2,a6,80007100 <__printf+0x638>
    80006e70:	00f6f693          	andi	a3,a3,15
    80006e74:	00dd86b3          	add	a3,s11,a3
    80006e78:	0006c583          	lbu	a1,0(a3)
    80006e7c:	0107d813          	srli	a6,a5,0x10
    80006e80:	0107d69b          	srliw	a3,a5,0x10
    80006e84:	f8b402a3          	sb	a1,-123(s0)
    80006e88:	28a67263          	bgeu	a2,a0,8000710c <__printf+0x644>
    80006e8c:	00f6f693          	andi	a3,a3,15
    80006e90:	00dd86b3          	add	a3,s11,a3
    80006e94:	0006c683          	lbu	a3,0(a3)
    80006e98:	0147d79b          	srliw	a5,a5,0x14
    80006e9c:	f8d40323          	sb	a3,-122(s0)
    80006ea0:	21067663          	bgeu	a2,a6,800070ac <__printf+0x5e4>
    80006ea4:	02079793          	slli	a5,a5,0x20
    80006ea8:	0207d793          	srli	a5,a5,0x20
    80006eac:	00fd8db3          	add	s11,s11,a5
    80006eb0:	000dc683          	lbu	a3,0(s11)
    80006eb4:	00800793          	li	a5,8
    80006eb8:	00700c93          	li	s9,7
    80006ebc:	f8d403a3          	sb	a3,-121(s0)
    80006ec0:	00075c63          	bgez	a4,80006ed8 <__printf+0x410>
    80006ec4:	f9040713          	addi	a4,s0,-112
    80006ec8:	00f70733          	add	a4,a4,a5
    80006ecc:	02d00693          	li	a3,45
    80006ed0:	fed70823          	sb	a3,-16(a4)
    80006ed4:	00078c93          	mv	s9,a5
    80006ed8:	f8040793          	addi	a5,s0,-128
    80006edc:	01978cb3          	add	s9,a5,s9
    80006ee0:	f7f40d13          	addi	s10,s0,-129
    80006ee4:	000cc503          	lbu	a0,0(s9)
    80006ee8:	fffc8c93          	addi	s9,s9,-1
    80006eec:	00000097          	auipc	ra,0x0
    80006ef0:	9f8080e7          	jalr	-1544(ra) # 800068e4 <consputc>
    80006ef4:	ff9d18e3          	bne	s10,s9,80006ee4 <__printf+0x41c>
    80006ef8:	0100006f          	j	80006f08 <__printf+0x440>
    80006efc:	00000097          	auipc	ra,0x0
    80006f00:	9e8080e7          	jalr	-1560(ra) # 800068e4 <consputc>
    80006f04:	000c8493          	mv	s1,s9
    80006f08:	00094503          	lbu	a0,0(s2)
    80006f0c:	c60510e3          	bnez	a0,80006b6c <__printf+0xa4>
    80006f10:	e40c0ee3          	beqz	s8,80006d6c <__printf+0x2a4>
    80006f14:	00009517          	auipc	a0,0x9
    80006f18:	b6c50513          	addi	a0,a0,-1172 # 8000fa80 <pr>
    80006f1c:	00001097          	auipc	ra,0x1
    80006f20:	94c080e7          	jalr	-1716(ra) # 80007868 <release>
    80006f24:	e49ff06f          	j	80006d6c <__printf+0x2a4>
    80006f28:	f7843783          	ld	a5,-136(s0)
    80006f2c:	03000513          	li	a0,48
    80006f30:	01000d13          	li	s10,16
    80006f34:	00878713          	addi	a4,a5,8
    80006f38:	0007bc83          	ld	s9,0(a5)
    80006f3c:	f6e43c23          	sd	a4,-136(s0)
    80006f40:	00000097          	auipc	ra,0x0
    80006f44:	9a4080e7          	jalr	-1628(ra) # 800068e4 <consputc>
    80006f48:	07800513          	li	a0,120
    80006f4c:	00000097          	auipc	ra,0x0
    80006f50:	998080e7          	jalr	-1640(ra) # 800068e4 <consputc>
    80006f54:	00001d97          	auipc	s11,0x1
    80006f58:	6f4d8d93          	addi	s11,s11,1780 # 80008648 <digits>
    80006f5c:	03ccd793          	srli	a5,s9,0x3c
    80006f60:	00fd87b3          	add	a5,s11,a5
    80006f64:	0007c503          	lbu	a0,0(a5)
    80006f68:	fffd0d1b          	addiw	s10,s10,-1
    80006f6c:	004c9c93          	slli	s9,s9,0x4
    80006f70:	00000097          	auipc	ra,0x0
    80006f74:	974080e7          	jalr	-1676(ra) # 800068e4 <consputc>
    80006f78:	fe0d12e3          	bnez	s10,80006f5c <__printf+0x494>
    80006f7c:	f8dff06f          	j	80006f08 <__printf+0x440>
    80006f80:	f7843783          	ld	a5,-136(s0)
    80006f84:	0007bc83          	ld	s9,0(a5)
    80006f88:	00878793          	addi	a5,a5,8
    80006f8c:	f6f43c23          	sd	a5,-136(s0)
    80006f90:	000c9a63          	bnez	s9,80006fa4 <__printf+0x4dc>
    80006f94:	1080006f          	j	8000709c <__printf+0x5d4>
    80006f98:	001c8c93          	addi	s9,s9,1
    80006f9c:	00000097          	auipc	ra,0x0
    80006fa0:	948080e7          	jalr	-1720(ra) # 800068e4 <consputc>
    80006fa4:	000cc503          	lbu	a0,0(s9)
    80006fa8:	fe0518e3          	bnez	a0,80006f98 <__printf+0x4d0>
    80006fac:	f5dff06f          	j	80006f08 <__printf+0x440>
    80006fb0:	02500513          	li	a0,37
    80006fb4:	00000097          	auipc	ra,0x0
    80006fb8:	930080e7          	jalr	-1744(ra) # 800068e4 <consputc>
    80006fbc:	000c8513          	mv	a0,s9
    80006fc0:	00000097          	auipc	ra,0x0
    80006fc4:	924080e7          	jalr	-1756(ra) # 800068e4 <consputc>
    80006fc8:	f41ff06f          	j	80006f08 <__printf+0x440>
    80006fcc:	02500513          	li	a0,37
    80006fd0:	00000097          	auipc	ra,0x0
    80006fd4:	914080e7          	jalr	-1772(ra) # 800068e4 <consputc>
    80006fd8:	f31ff06f          	j	80006f08 <__printf+0x440>
    80006fdc:	00030513          	mv	a0,t1
    80006fe0:	00000097          	auipc	ra,0x0
    80006fe4:	7bc080e7          	jalr	1980(ra) # 8000779c <acquire>
    80006fe8:	b4dff06f          	j	80006b34 <__printf+0x6c>
    80006fec:	40c0053b          	negw	a0,a2
    80006ff0:	00a00713          	li	a4,10
    80006ff4:	02e576bb          	remuw	a3,a0,a4
    80006ff8:	00001d97          	auipc	s11,0x1
    80006ffc:	650d8d93          	addi	s11,s11,1616 # 80008648 <digits>
    80007000:	ff700593          	li	a1,-9
    80007004:	02069693          	slli	a3,a3,0x20
    80007008:	0206d693          	srli	a3,a3,0x20
    8000700c:	00dd86b3          	add	a3,s11,a3
    80007010:	0006c683          	lbu	a3,0(a3)
    80007014:	02e557bb          	divuw	a5,a0,a4
    80007018:	f8d40023          	sb	a3,-128(s0)
    8000701c:	10b65e63          	bge	a2,a1,80007138 <__printf+0x670>
    80007020:	06300593          	li	a1,99
    80007024:	02e7f6bb          	remuw	a3,a5,a4
    80007028:	02069693          	slli	a3,a3,0x20
    8000702c:	0206d693          	srli	a3,a3,0x20
    80007030:	00dd86b3          	add	a3,s11,a3
    80007034:	0006c683          	lbu	a3,0(a3)
    80007038:	02e7d73b          	divuw	a4,a5,a4
    8000703c:	00200793          	li	a5,2
    80007040:	f8d400a3          	sb	a3,-127(s0)
    80007044:	bca5ece3          	bltu	a1,a0,80006c1c <__printf+0x154>
    80007048:	ce5ff06f          	j	80006d2c <__printf+0x264>
    8000704c:	40e007bb          	negw	a5,a4
    80007050:	00001d97          	auipc	s11,0x1
    80007054:	5f8d8d93          	addi	s11,s11,1528 # 80008648 <digits>
    80007058:	00f7f693          	andi	a3,a5,15
    8000705c:	00dd86b3          	add	a3,s11,a3
    80007060:	0006c583          	lbu	a1,0(a3)
    80007064:	ff100613          	li	a2,-15
    80007068:	0047d69b          	srliw	a3,a5,0x4
    8000706c:	f8b40023          	sb	a1,-128(s0)
    80007070:	0047d59b          	srliw	a1,a5,0x4
    80007074:	0ac75e63          	bge	a4,a2,80007130 <__printf+0x668>
    80007078:	00f6f693          	andi	a3,a3,15
    8000707c:	00dd86b3          	add	a3,s11,a3
    80007080:	0006c603          	lbu	a2,0(a3)
    80007084:	00f00693          	li	a3,15
    80007088:	0087d79b          	srliw	a5,a5,0x8
    8000708c:	f8c400a3          	sb	a2,-127(s0)
    80007090:	d8b6e4e3          	bltu	a3,a1,80006e18 <__printf+0x350>
    80007094:	00200793          	li	a5,2
    80007098:	e2dff06f          	j	80006ec4 <__printf+0x3fc>
    8000709c:	00001c97          	auipc	s9,0x1
    800070a0:	58cc8c93          	addi	s9,s9,1420 # 80008628 <CONSOLE_STATUS+0x618>
    800070a4:	02800513          	li	a0,40
    800070a8:	ef1ff06f          	j	80006f98 <__printf+0x4d0>
    800070ac:	00700793          	li	a5,7
    800070b0:	00600c93          	li	s9,6
    800070b4:	e0dff06f          	j	80006ec0 <__printf+0x3f8>
    800070b8:	00700793          	li	a5,7
    800070bc:	00600c93          	li	s9,6
    800070c0:	c69ff06f          	j	80006d28 <__printf+0x260>
    800070c4:	00300793          	li	a5,3
    800070c8:	00200c93          	li	s9,2
    800070cc:	c5dff06f          	j	80006d28 <__printf+0x260>
    800070d0:	00300793          	li	a5,3
    800070d4:	00200c93          	li	s9,2
    800070d8:	de9ff06f          	j	80006ec0 <__printf+0x3f8>
    800070dc:	00400793          	li	a5,4
    800070e0:	00300c93          	li	s9,3
    800070e4:	dddff06f          	j	80006ec0 <__printf+0x3f8>
    800070e8:	00400793          	li	a5,4
    800070ec:	00300c93          	li	s9,3
    800070f0:	c39ff06f          	j	80006d28 <__printf+0x260>
    800070f4:	00500793          	li	a5,5
    800070f8:	00400c93          	li	s9,4
    800070fc:	c2dff06f          	j	80006d28 <__printf+0x260>
    80007100:	00500793          	li	a5,5
    80007104:	00400c93          	li	s9,4
    80007108:	db9ff06f          	j	80006ec0 <__printf+0x3f8>
    8000710c:	00600793          	li	a5,6
    80007110:	00500c93          	li	s9,5
    80007114:	dadff06f          	j	80006ec0 <__printf+0x3f8>
    80007118:	00600793          	li	a5,6
    8000711c:	00500c93          	li	s9,5
    80007120:	c09ff06f          	j	80006d28 <__printf+0x260>
    80007124:	00800793          	li	a5,8
    80007128:	00700c93          	li	s9,7
    8000712c:	bfdff06f          	j	80006d28 <__printf+0x260>
    80007130:	00100793          	li	a5,1
    80007134:	d91ff06f          	j	80006ec4 <__printf+0x3fc>
    80007138:	00100793          	li	a5,1
    8000713c:	bf1ff06f          	j	80006d2c <__printf+0x264>
    80007140:	00900793          	li	a5,9
    80007144:	00800c93          	li	s9,8
    80007148:	be1ff06f          	j	80006d28 <__printf+0x260>
    8000714c:	00001517          	auipc	a0,0x1
    80007150:	4e450513          	addi	a0,a0,1252 # 80008630 <CONSOLE_STATUS+0x620>
    80007154:	00000097          	auipc	ra,0x0
    80007158:	918080e7          	jalr	-1768(ra) # 80006a6c <panic>

000000008000715c <printfinit>:
    8000715c:	fe010113          	addi	sp,sp,-32
    80007160:	00813823          	sd	s0,16(sp)
    80007164:	00913423          	sd	s1,8(sp)
    80007168:	00113c23          	sd	ra,24(sp)
    8000716c:	02010413          	addi	s0,sp,32
    80007170:	00009497          	auipc	s1,0x9
    80007174:	91048493          	addi	s1,s1,-1776 # 8000fa80 <pr>
    80007178:	00048513          	mv	a0,s1
    8000717c:	00001597          	auipc	a1,0x1
    80007180:	4c458593          	addi	a1,a1,1220 # 80008640 <CONSOLE_STATUS+0x630>
    80007184:	00000097          	auipc	ra,0x0
    80007188:	5f4080e7          	jalr	1524(ra) # 80007778 <initlock>
    8000718c:	01813083          	ld	ra,24(sp)
    80007190:	01013403          	ld	s0,16(sp)
    80007194:	0004ac23          	sw	zero,24(s1)
    80007198:	00813483          	ld	s1,8(sp)
    8000719c:	02010113          	addi	sp,sp,32
    800071a0:	00008067          	ret

00000000800071a4 <uartinit>:
    800071a4:	ff010113          	addi	sp,sp,-16
    800071a8:	00813423          	sd	s0,8(sp)
    800071ac:	01010413          	addi	s0,sp,16
    800071b0:	100007b7          	lui	a5,0x10000
    800071b4:	000780a3          	sb	zero,1(a5) # 10000001 <_entry-0x6fffffff>
    800071b8:	f8000713          	li	a4,-128
    800071bc:	00e781a3          	sb	a4,3(a5)
    800071c0:	00300713          	li	a4,3
    800071c4:	00e78023          	sb	a4,0(a5)
    800071c8:	000780a3          	sb	zero,1(a5)
    800071cc:	00e781a3          	sb	a4,3(a5)
    800071d0:	00700693          	li	a3,7
    800071d4:	00d78123          	sb	a3,2(a5)
    800071d8:	00e780a3          	sb	a4,1(a5)
    800071dc:	00813403          	ld	s0,8(sp)
    800071e0:	01010113          	addi	sp,sp,16
    800071e4:	00008067          	ret

00000000800071e8 <uartputc>:
    800071e8:	00003797          	auipc	a5,0x3
    800071ec:	5907a783          	lw	a5,1424(a5) # 8000a778 <panicked>
    800071f0:	00078463          	beqz	a5,800071f8 <uartputc+0x10>
    800071f4:	0000006f          	j	800071f4 <uartputc+0xc>
    800071f8:	fd010113          	addi	sp,sp,-48
    800071fc:	02813023          	sd	s0,32(sp)
    80007200:	00913c23          	sd	s1,24(sp)
    80007204:	01213823          	sd	s2,16(sp)
    80007208:	01313423          	sd	s3,8(sp)
    8000720c:	02113423          	sd	ra,40(sp)
    80007210:	03010413          	addi	s0,sp,48
    80007214:	00003917          	auipc	s2,0x3
    80007218:	56c90913          	addi	s2,s2,1388 # 8000a780 <uart_tx_r>
    8000721c:	00093783          	ld	a5,0(s2)
    80007220:	00003497          	auipc	s1,0x3
    80007224:	56848493          	addi	s1,s1,1384 # 8000a788 <uart_tx_w>
    80007228:	0004b703          	ld	a4,0(s1)
    8000722c:	02078693          	addi	a3,a5,32
    80007230:	00050993          	mv	s3,a0
    80007234:	02e69c63          	bne	a3,a4,8000726c <uartputc+0x84>
    80007238:	00001097          	auipc	ra,0x1
    8000723c:	834080e7          	jalr	-1996(ra) # 80007a6c <push_on>
    80007240:	00093783          	ld	a5,0(s2)
    80007244:	0004b703          	ld	a4,0(s1)
    80007248:	02078793          	addi	a5,a5,32
    8000724c:	00e79463          	bne	a5,a4,80007254 <uartputc+0x6c>
    80007250:	0000006f          	j	80007250 <uartputc+0x68>
    80007254:	00001097          	auipc	ra,0x1
    80007258:	88c080e7          	jalr	-1908(ra) # 80007ae0 <pop_on>
    8000725c:	00093783          	ld	a5,0(s2)
    80007260:	0004b703          	ld	a4,0(s1)
    80007264:	02078693          	addi	a3,a5,32
    80007268:	fce688e3          	beq	a3,a4,80007238 <uartputc+0x50>
    8000726c:	01f77693          	andi	a3,a4,31
    80007270:	00009597          	auipc	a1,0x9
    80007274:	83058593          	addi	a1,a1,-2000 # 8000faa0 <uart_tx_buf>
    80007278:	00d586b3          	add	a3,a1,a3
    8000727c:	00170713          	addi	a4,a4,1
    80007280:	01368023          	sb	s3,0(a3)
    80007284:	00e4b023          	sd	a4,0(s1)
    80007288:	10000637          	lui	a2,0x10000
    8000728c:	02f71063          	bne	a4,a5,800072ac <uartputc+0xc4>
    80007290:	0340006f          	j	800072c4 <uartputc+0xdc>
    80007294:	00074703          	lbu	a4,0(a4)
    80007298:	00f93023          	sd	a5,0(s2)
    8000729c:	00e60023          	sb	a4,0(a2) # 10000000 <_entry-0x70000000>
    800072a0:	00093783          	ld	a5,0(s2)
    800072a4:	0004b703          	ld	a4,0(s1)
    800072a8:	00f70e63          	beq	a4,a5,800072c4 <uartputc+0xdc>
    800072ac:	00564683          	lbu	a3,5(a2)
    800072b0:	01f7f713          	andi	a4,a5,31
    800072b4:	00e58733          	add	a4,a1,a4
    800072b8:	0206f693          	andi	a3,a3,32
    800072bc:	00178793          	addi	a5,a5,1
    800072c0:	fc069ae3          	bnez	a3,80007294 <uartputc+0xac>
    800072c4:	02813083          	ld	ra,40(sp)
    800072c8:	02013403          	ld	s0,32(sp)
    800072cc:	01813483          	ld	s1,24(sp)
    800072d0:	01013903          	ld	s2,16(sp)
    800072d4:	00813983          	ld	s3,8(sp)
    800072d8:	03010113          	addi	sp,sp,48
    800072dc:	00008067          	ret

00000000800072e0 <uartputc_sync>:
    800072e0:	ff010113          	addi	sp,sp,-16
    800072e4:	00813423          	sd	s0,8(sp)
    800072e8:	01010413          	addi	s0,sp,16
    800072ec:	00003717          	auipc	a4,0x3
    800072f0:	48c72703          	lw	a4,1164(a4) # 8000a778 <panicked>
    800072f4:	02071663          	bnez	a4,80007320 <uartputc_sync+0x40>
    800072f8:	00050793          	mv	a5,a0
    800072fc:	100006b7          	lui	a3,0x10000
    80007300:	0056c703          	lbu	a4,5(a3) # 10000005 <_entry-0x6ffffffb>
    80007304:	02077713          	andi	a4,a4,32
    80007308:	fe070ce3          	beqz	a4,80007300 <uartputc_sync+0x20>
    8000730c:	0ff7f793          	andi	a5,a5,255
    80007310:	00f68023          	sb	a5,0(a3)
    80007314:	00813403          	ld	s0,8(sp)
    80007318:	01010113          	addi	sp,sp,16
    8000731c:	00008067          	ret
    80007320:	0000006f          	j	80007320 <uartputc_sync+0x40>

0000000080007324 <uartstart>:
    80007324:	ff010113          	addi	sp,sp,-16
    80007328:	00813423          	sd	s0,8(sp)
    8000732c:	01010413          	addi	s0,sp,16
    80007330:	00003617          	auipc	a2,0x3
    80007334:	45060613          	addi	a2,a2,1104 # 8000a780 <uart_tx_r>
    80007338:	00003517          	auipc	a0,0x3
    8000733c:	45050513          	addi	a0,a0,1104 # 8000a788 <uart_tx_w>
    80007340:	00063783          	ld	a5,0(a2)
    80007344:	00053703          	ld	a4,0(a0)
    80007348:	04f70263          	beq	a4,a5,8000738c <uartstart+0x68>
    8000734c:	100005b7          	lui	a1,0x10000
    80007350:	00008817          	auipc	a6,0x8
    80007354:	75080813          	addi	a6,a6,1872 # 8000faa0 <uart_tx_buf>
    80007358:	01c0006f          	j	80007374 <uartstart+0x50>
    8000735c:	0006c703          	lbu	a4,0(a3)
    80007360:	00f63023          	sd	a5,0(a2)
    80007364:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    80007368:	00063783          	ld	a5,0(a2)
    8000736c:	00053703          	ld	a4,0(a0)
    80007370:	00f70e63          	beq	a4,a5,8000738c <uartstart+0x68>
    80007374:	01f7f713          	andi	a4,a5,31
    80007378:	00e806b3          	add	a3,a6,a4
    8000737c:	0055c703          	lbu	a4,5(a1)
    80007380:	00178793          	addi	a5,a5,1
    80007384:	02077713          	andi	a4,a4,32
    80007388:	fc071ae3          	bnez	a4,8000735c <uartstart+0x38>
    8000738c:	00813403          	ld	s0,8(sp)
    80007390:	01010113          	addi	sp,sp,16
    80007394:	00008067          	ret

0000000080007398 <uartgetc>:
    80007398:	ff010113          	addi	sp,sp,-16
    8000739c:	00813423          	sd	s0,8(sp)
    800073a0:	01010413          	addi	s0,sp,16
    800073a4:	10000737          	lui	a4,0x10000
    800073a8:	00574783          	lbu	a5,5(a4) # 10000005 <_entry-0x6ffffffb>
    800073ac:	0017f793          	andi	a5,a5,1
    800073b0:	00078c63          	beqz	a5,800073c8 <uartgetc+0x30>
    800073b4:	00074503          	lbu	a0,0(a4)
    800073b8:	0ff57513          	andi	a0,a0,255
    800073bc:	00813403          	ld	s0,8(sp)
    800073c0:	01010113          	addi	sp,sp,16
    800073c4:	00008067          	ret
    800073c8:	fff00513          	li	a0,-1
    800073cc:	ff1ff06f          	j	800073bc <uartgetc+0x24>

00000000800073d0 <uartintr>:
    800073d0:	100007b7          	lui	a5,0x10000
    800073d4:	0057c783          	lbu	a5,5(a5) # 10000005 <_entry-0x6ffffffb>
    800073d8:	0017f793          	andi	a5,a5,1
    800073dc:	0a078463          	beqz	a5,80007484 <uartintr+0xb4>
    800073e0:	fe010113          	addi	sp,sp,-32
    800073e4:	00813823          	sd	s0,16(sp)
    800073e8:	00913423          	sd	s1,8(sp)
    800073ec:	00113c23          	sd	ra,24(sp)
    800073f0:	02010413          	addi	s0,sp,32
    800073f4:	100004b7          	lui	s1,0x10000
    800073f8:	0004c503          	lbu	a0,0(s1) # 10000000 <_entry-0x70000000>
    800073fc:	0ff57513          	andi	a0,a0,255
    80007400:	fffff097          	auipc	ra,0xfffff
    80007404:	534080e7          	jalr	1332(ra) # 80006934 <consoleintr>
    80007408:	0054c783          	lbu	a5,5(s1)
    8000740c:	0017f793          	andi	a5,a5,1
    80007410:	fe0794e3          	bnez	a5,800073f8 <uartintr+0x28>
    80007414:	00003617          	auipc	a2,0x3
    80007418:	36c60613          	addi	a2,a2,876 # 8000a780 <uart_tx_r>
    8000741c:	00003517          	auipc	a0,0x3
    80007420:	36c50513          	addi	a0,a0,876 # 8000a788 <uart_tx_w>
    80007424:	00063783          	ld	a5,0(a2)
    80007428:	00053703          	ld	a4,0(a0)
    8000742c:	04f70263          	beq	a4,a5,80007470 <uartintr+0xa0>
    80007430:	100005b7          	lui	a1,0x10000
    80007434:	00008817          	auipc	a6,0x8
    80007438:	66c80813          	addi	a6,a6,1644 # 8000faa0 <uart_tx_buf>
    8000743c:	01c0006f          	j	80007458 <uartintr+0x88>
    80007440:	0006c703          	lbu	a4,0(a3)
    80007444:	00f63023          	sd	a5,0(a2)
    80007448:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    8000744c:	00063783          	ld	a5,0(a2)
    80007450:	00053703          	ld	a4,0(a0)
    80007454:	00f70e63          	beq	a4,a5,80007470 <uartintr+0xa0>
    80007458:	01f7f713          	andi	a4,a5,31
    8000745c:	00e806b3          	add	a3,a6,a4
    80007460:	0055c703          	lbu	a4,5(a1)
    80007464:	00178793          	addi	a5,a5,1
    80007468:	02077713          	andi	a4,a4,32
    8000746c:	fc071ae3          	bnez	a4,80007440 <uartintr+0x70>
    80007470:	01813083          	ld	ra,24(sp)
    80007474:	01013403          	ld	s0,16(sp)
    80007478:	00813483          	ld	s1,8(sp)
    8000747c:	02010113          	addi	sp,sp,32
    80007480:	00008067          	ret
    80007484:	00003617          	auipc	a2,0x3
    80007488:	2fc60613          	addi	a2,a2,764 # 8000a780 <uart_tx_r>
    8000748c:	00003517          	auipc	a0,0x3
    80007490:	2fc50513          	addi	a0,a0,764 # 8000a788 <uart_tx_w>
    80007494:	00063783          	ld	a5,0(a2)
    80007498:	00053703          	ld	a4,0(a0)
    8000749c:	04f70263          	beq	a4,a5,800074e0 <uartintr+0x110>
    800074a0:	100005b7          	lui	a1,0x10000
    800074a4:	00008817          	auipc	a6,0x8
    800074a8:	5fc80813          	addi	a6,a6,1532 # 8000faa0 <uart_tx_buf>
    800074ac:	01c0006f          	j	800074c8 <uartintr+0xf8>
    800074b0:	0006c703          	lbu	a4,0(a3)
    800074b4:	00f63023          	sd	a5,0(a2)
    800074b8:	00e58023          	sb	a4,0(a1) # 10000000 <_entry-0x70000000>
    800074bc:	00063783          	ld	a5,0(a2)
    800074c0:	00053703          	ld	a4,0(a0)
    800074c4:	02f70063          	beq	a4,a5,800074e4 <uartintr+0x114>
    800074c8:	01f7f713          	andi	a4,a5,31
    800074cc:	00e806b3          	add	a3,a6,a4
    800074d0:	0055c703          	lbu	a4,5(a1)
    800074d4:	00178793          	addi	a5,a5,1
    800074d8:	02077713          	andi	a4,a4,32
    800074dc:	fc071ae3          	bnez	a4,800074b0 <uartintr+0xe0>
    800074e0:	00008067          	ret
    800074e4:	00008067          	ret

00000000800074e8 <kinit>:
    800074e8:	fc010113          	addi	sp,sp,-64
    800074ec:	02913423          	sd	s1,40(sp)
    800074f0:	fffff7b7          	lui	a5,0xfffff
    800074f4:	00009497          	auipc	s1,0x9
    800074f8:	5cb48493          	addi	s1,s1,1483 # 80010abf <end+0xfff>
    800074fc:	02813823          	sd	s0,48(sp)
    80007500:	01313c23          	sd	s3,24(sp)
    80007504:	00f4f4b3          	and	s1,s1,a5
    80007508:	02113c23          	sd	ra,56(sp)
    8000750c:	03213023          	sd	s2,32(sp)
    80007510:	01413823          	sd	s4,16(sp)
    80007514:	01513423          	sd	s5,8(sp)
    80007518:	04010413          	addi	s0,sp,64
    8000751c:	000017b7          	lui	a5,0x1
    80007520:	01100993          	li	s3,17
    80007524:	00f487b3          	add	a5,s1,a5
    80007528:	01b99993          	slli	s3,s3,0x1b
    8000752c:	06f9e063          	bltu	s3,a5,8000758c <kinit+0xa4>
    80007530:	00008a97          	auipc	s5,0x8
    80007534:	590a8a93          	addi	s5,s5,1424 # 8000fac0 <end>
    80007538:	0754ec63          	bltu	s1,s5,800075b0 <kinit+0xc8>
    8000753c:	0734fa63          	bgeu	s1,s3,800075b0 <kinit+0xc8>
    80007540:	00088a37          	lui	s4,0x88
    80007544:	fffa0a13          	addi	s4,s4,-1 # 87fff <_entry-0x7ff78001>
    80007548:	00003917          	auipc	s2,0x3
    8000754c:	24890913          	addi	s2,s2,584 # 8000a790 <kmem>
    80007550:	00ca1a13          	slli	s4,s4,0xc
    80007554:	0140006f          	j	80007568 <kinit+0x80>
    80007558:	000017b7          	lui	a5,0x1
    8000755c:	00f484b3          	add	s1,s1,a5
    80007560:	0554e863          	bltu	s1,s5,800075b0 <kinit+0xc8>
    80007564:	0534f663          	bgeu	s1,s3,800075b0 <kinit+0xc8>
    80007568:	00001637          	lui	a2,0x1
    8000756c:	00100593          	li	a1,1
    80007570:	00048513          	mv	a0,s1
    80007574:	00000097          	auipc	ra,0x0
    80007578:	5e4080e7          	jalr	1508(ra) # 80007b58 <__memset>
    8000757c:	00093783          	ld	a5,0(s2)
    80007580:	00f4b023          	sd	a5,0(s1)
    80007584:	00993023          	sd	s1,0(s2)
    80007588:	fd4498e3          	bne	s1,s4,80007558 <kinit+0x70>
    8000758c:	03813083          	ld	ra,56(sp)
    80007590:	03013403          	ld	s0,48(sp)
    80007594:	02813483          	ld	s1,40(sp)
    80007598:	02013903          	ld	s2,32(sp)
    8000759c:	01813983          	ld	s3,24(sp)
    800075a0:	01013a03          	ld	s4,16(sp)
    800075a4:	00813a83          	ld	s5,8(sp)
    800075a8:	04010113          	addi	sp,sp,64
    800075ac:	00008067          	ret
    800075b0:	00001517          	auipc	a0,0x1
    800075b4:	0b050513          	addi	a0,a0,176 # 80008660 <digits+0x18>
    800075b8:	fffff097          	auipc	ra,0xfffff
    800075bc:	4b4080e7          	jalr	1204(ra) # 80006a6c <panic>

00000000800075c0 <freerange>:
    800075c0:	fc010113          	addi	sp,sp,-64
    800075c4:	000017b7          	lui	a5,0x1
    800075c8:	02913423          	sd	s1,40(sp)
    800075cc:	fff78493          	addi	s1,a5,-1 # fff <_entry-0x7ffff001>
    800075d0:	009504b3          	add	s1,a0,s1
    800075d4:	fffff537          	lui	a0,0xfffff
    800075d8:	02813823          	sd	s0,48(sp)
    800075dc:	02113c23          	sd	ra,56(sp)
    800075e0:	03213023          	sd	s2,32(sp)
    800075e4:	01313c23          	sd	s3,24(sp)
    800075e8:	01413823          	sd	s4,16(sp)
    800075ec:	01513423          	sd	s5,8(sp)
    800075f0:	01613023          	sd	s6,0(sp)
    800075f4:	04010413          	addi	s0,sp,64
    800075f8:	00a4f4b3          	and	s1,s1,a0
    800075fc:	00f487b3          	add	a5,s1,a5
    80007600:	06f5e463          	bltu	a1,a5,80007668 <freerange+0xa8>
    80007604:	00008a97          	auipc	s5,0x8
    80007608:	4bca8a93          	addi	s5,s5,1212 # 8000fac0 <end>
    8000760c:	0954e263          	bltu	s1,s5,80007690 <freerange+0xd0>
    80007610:	01100993          	li	s3,17
    80007614:	01b99993          	slli	s3,s3,0x1b
    80007618:	0734fc63          	bgeu	s1,s3,80007690 <freerange+0xd0>
    8000761c:	00058a13          	mv	s4,a1
    80007620:	00003917          	auipc	s2,0x3
    80007624:	17090913          	addi	s2,s2,368 # 8000a790 <kmem>
    80007628:	00002b37          	lui	s6,0x2
    8000762c:	0140006f          	j	80007640 <freerange+0x80>
    80007630:	000017b7          	lui	a5,0x1
    80007634:	00f484b3          	add	s1,s1,a5
    80007638:	0554ec63          	bltu	s1,s5,80007690 <freerange+0xd0>
    8000763c:	0534fa63          	bgeu	s1,s3,80007690 <freerange+0xd0>
    80007640:	00001637          	lui	a2,0x1
    80007644:	00100593          	li	a1,1
    80007648:	00048513          	mv	a0,s1
    8000764c:	00000097          	auipc	ra,0x0
    80007650:	50c080e7          	jalr	1292(ra) # 80007b58 <__memset>
    80007654:	00093703          	ld	a4,0(s2)
    80007658:	016487b3          	add	a5,s1,s6
    8000765c:	00e4b023          	sd	a4,0(s1)
    80007660:	00993023          	sd	s1,0(s2)
    80007664:	fcfa76e3          	bgeu	s4,a5,80007630 <freerange+0x70>
    80007668:	03813083          	ld	ra,56(sp)
    8000766c:	03013403          	ld	s0,48(sp)
    80007670:	02813483          	ld	s1,40(sp)
    80007674:	02013903          	ld	s2,32(sp)
    80007678:	01813983          	ld	s3,24(sp)
    8000767c:	01013a03          	ld	s4,16(sp)
    80007680:	00813a83          	ld	s5,8(sp)
    80007684:	00013b03          	ld	s6,0(sp)
    80007688:	04010113          	addi	sp,sp,64
    8000768c:	00008067          	ret
    80007690:	00001517          	auipc	a0,0x1
    80007694:	fd050513          	addi	a0,a0,-48 # 80008660 <digits+0x18>
    80007698:	fffff097          	auipc	ra,0xfffff
    8000769c:	3d4080e7          	jalr	980(ra) # 80006a6c <panic>

00000000800076a0 <kfree>:
    800076a0:	fe010113          	addi	sp,sp,-32
    800076a4:	00813823          	sd	s0,16(sp)
    800076a8:	00113c23          	sd	ra,24(sp)
    800076ac:	00913423          	sd	s1,8(sp)
    800076b0:	02010413          	addi	s0,sp,32
    800076b4:	03451793          	slli	a5,a0,0x34
    800076b8:	04079c63          	bnez	a5,80007710 <kfree+0x70>
    800076bc:	00008797          	auipc	a5,0x8
    800076c0:	40478793          	addi	a5,a5,1028 # 8000fac0 <end>
    800076c4:	00050493          	mv	s1,a0
    800076c8:	04f56463          	bltu	a0,a5,80007710 <kfree+0x70>
    800076cc:	01100793          	li	a5,17
    800076d0:	01b79793          	slli	a5,a5,0x1b
    800076d4:	02f57e63          	bgeu	a0,a5,80007710 <kfree+0x70>
    800076d8:	00001637          	lui	a2,0x1
    800076dc:	00100593          	li	a1,1
    800076e0:	00000097          	auipc	ra,0x0
    800076e4:	478080e7          	jalr	1144(ra) # 80007b58 <__memset>
    800076e8:	00003797          	auipc	a5,0x3
    800076ec:	0a878793          	addi	a5,a5,168 # 8000a790 <kmem>
    800076f0:	0007b703          	ld	a4,0(a5)
    800076f4:	01813083          	ld	ra,24(sp)
    800076f8:	01013403          	ld	s0,16(sp)
    800076fc:	00e4b023          	sd	a4,0(s1)
    80007700:	0097b023          	sd	s1,0(a5)
    80007704:	00813483          	ld	s1,8(sp)
    80007708:	02010113          	addi	sp,sp,32
    8000770c:	00008067          	ret
    80007710:	00001517          	auipc	a0,0x1
    80007714:	f5050513          	addi	a0,a0,-176 # 80008660 <digits+0x18>
    80007718:	fffff097          	auipc	ra,0xfffff
    8000771c:	354080e7          	jalr	852(ra) # 80006a6c <panic>

0000000080007720 <kalloc>:
    80007720:	fe010113          	addi	sp,sp,-32
    80007724:	00813823          	sd	s0,16(sp)
    80007728:	00913423          	sd	s1,8(sp)
    8000772c:	00113c23          	sd	ra,24(sp)
    80007730:	02010413          	addi	s0,sp,32
    80007734:	00003797          	auipc	a5,0x3
    80007738:	05c78793          	addi	a5,a5,92 # 8000a790 <kmem>
    8000773c:	0007b483          	ld	s1,0(a5)
    80007740:	02048063          	beqz	s1,80007760 <kalloc+0x40>
    80007744:	0004b703          	ld	a4,0(s1)
    80007748:	00001637          	lui	a2,0x1
    8000774c:	00500593          	li	a1,5
    80007750:	00048513          	mv	a0,s1
    80007754:	00e7b023          	sd	a4,0(a5)
    80007758:	00000097          	auipc	ra,0x0
    8000775c:	400080e7          	jalr	1024(ra) # 80007b58 <__memset>
    80007760:	01813083          	ld	ra,24(sp)
    80007764:	01013403          	ld	s0,16(sp)
    80007768:	00048513          	mv	a0,s1
    8000776c:	00813483          	ld	s1,8(sp)
    80007770:	02010113          	addi	sp,sp,32
    80007774:	00008067          	ret

0000000080007778 <initlock>:
    80007778:	ff010113          	addi	sp,sp,-16
    8000777c:	00813423          	sd	s0,8(sp)
    80007780:	01010413          	addi	s0,sp,16
    80007784:	00813403          	ld	s0,8(sp)
    80007788:	00b53423          	sd	a1,8(a0)
    8000778c:	00052023          	sw	zero,0(a0)
    80007790:	00053823          	sd	zero,16(a0)
    80007794:	01010113          	addi	sp,sp,16
    80007798:	00008067          	ret

000000008000779c <acquire>:
    8000779c:	fe010113          	addi	sp,sp,-32
    800077a0:	00813823          	sd	s0,16(sp)
    800077a4:	00913423          	sd	s1,8(sp)
    800077a8:	00113c23          	sd	ra,24(sp)
    800077ac:	01213023          	sd	s2,0(sp)
    800077b0:	02010413          	addi	s0,sp,32
    800077b4:	00050493          	mv	s1,a0
    800077b8:	10002973          	csrr	s2,sstatus
    800077bc:	100027f3          	csrr	a5,sstatus
    800077c0:	ffd7f793          	andi	a5,a5,-3
    800077c4:	10079073          	csrw	sstatus,a5
    800077c8:	fffff097          	auipc	ra,0xfffff
    800077cc:	8e8080e7          	jalr	-1816(ra) # 800060b0 <mycpu>
    800077d0:	07852783          	lw	a5,120(a0)
    800077d4:	06078e63          	beqz	a5,80007850 <acquire+0xb4>
    800077d8:	fffff097          	auipc	ra,0xfffff
    800077dc:	8d8080e7          	jalr	-1832(ra) # 800060b0 <mycpu>
    800077e0:	07852783          	lw	a5,120(a0)
    800077e4:	0004a703          	lw	a4,0(s1)
    800077e8:	0017879b          	addiw	a5,a5,1
    800077ec:	06f52c23          	sw	a5,120(a0)
    800077f0:	04071063          	bnez	a4,80007830 <acquire+0x94>
    800077f4:	00100713          	li	a4,1
    800077f8:	00070793          	mv	a5,a4
    800077fc:	0cf4a7af          	amoswap.w.aq	a5,a5,(s1)
    80007800:	0007879b          	sext.w	a5,a5
    80007804:	fe079ae3          	bnez	a5,800077f8 <acquire+0x5c>
    80007808:	0ff0000f          	fence
    8000780c:	fffff097          	auipc	ra,0xfffff
    80007810:	8a4080e7          	jalr	-1884(ra) # 800060b0 <mycpu>
    80007814:	01813083          	ld	ra,24(sp)
    80007818:	01013403          	ld	s0,16(sp)
    8000781c:	00a4b823          	sd	a0,16(s1)
    80007820:	00013903          	ld	s2,0(sp)
    80007824:	00813483          	ld	s1,8(sp)
    80007828:	02010113          	addi	sp,sp,32
    8000782c:	00008067          	ret
    80007830:	0104b903          	ld	s2,16(s1)
    80007834:	fffff097          	auipc	ra,0xfffff
    80007838:	87c080e7          	jalr	-1924(ra) # 800060b0 <mycpu>
    8000783c:	faa91ce3          	bne	s2,a0,800077f4 <acquire+0x58>
    80007840:	00001517          	auipc	a0,0x1
    80007844:	e2850513          	addi	a0,a0,-472 # 80008668 <digits+0x20>
    80007848:	fffff097          	auipc	ra,0xfffff
    8000784c:	224080e7          	jalr	548(ra) # 80006a6c <panic>
    80007850:	00195913          	srli	s2,s2,0x1
    80007854:	fffff097          	auipc	ra,0xfffff
    80007858:	85c080e7          	jalr	-1956(ra) # 800060b0 <mycpu>
    8000785c:	00197913          	andi	s2,s2,1
    80007860:	07252e23          	sw	s2,124(a0)
    80007864:	f75ff06f          	j	800077d8 <acquire+0x3c>

0000000080007868 <release>:
    80007868:	fe010113          	addi	sp,sp,-32
    8000786c:	00813823          	sd	s0,16(sp)
    80007870:	00113c23          	sd	ra,24(sp)
    80007874:	00913423          	sd	s1,8(sp)
    80007878:	01213023          	sd	s2,0(sp)
    8000787c:	02010413          	addi	s0,sp,32
    80007880:	00052783          	lw	a5,0(a0)
    80007884:	00079a63          	bnez	a5,80007898 <release+0x30>
    80007888:	00001517          	auipc	a0,0x1
    8000788c:	de850513          	addi	a0,a0,-536 # 80008670 <digits+0x28>
    80007890:	fffff097          	auipc	ra,0xfffff
    80007894:	1dc080e7          	jalr	476(ra) # 80006a6c <panic>
    80007898:	01053903          	ld	s2,16(a0)
    8000789c:	00050493          	mv	s1,a0
    800078a0:	fffff097          	auipc	ra,0xfffff
    800078a4:	810080e7          	jalr	-2032(ra) # 800060b0 <mycpu>
    800078a8:	fea910e3          	bne	s2,a0,80007888 <release+0x20>
    800078ac:	0004b823          	sd	zero,16(s1)
    800078b0:	0ff0000f          	fence
    800078b4:	0f50000f          	fence	iorw,ow
    800078b8:	0804a02f          	amoswap.w	zero,zero,(s1)
    800078bc:	ffffe097          	auipc	ra,0xffffe
    800078c0:	7f4080e7          	jalr	2036(ra) # 800060b0 <mycpu>
    800078c4:	100027f3          	csrr	a5,sstatus
    800078c8:	0027f793          	andi	a5,a5,2
    800078cc:	04079a63          	bnez	a5,80007920 <release+0xb8>
    800078d0:	07852783          	lw	a5,120(a0)
    800078d4:	02f05e63          	blez	a5,80007910 <release+0xa8>
    800078d8:	fff7871b          	addiw	a4,a5,-1
    800078dc:	06e52c23          	sw	a4,120(a0)
    800078e0:	00071c63          	bnez	a4,800078f8 <release+0x90>
    800078e4:	07c52783          	lw	a5,124(a0)
    800078e8:	00078863          	beqz	a5,800078f8 <release+0x90>
    800078ec:	100027f3          	csrr	a5,sstatus
    800078f0:	0027e793          	ori	a5,a5,2
    800078f4:	10079073          	csrw	sstatus,a5
    800078f8:	01813083          	ld	ra,24(sp)
    800078fc:	01013403          	ld	s0,16(sp)
    80007900:	00813483          	ld	s1,8(sp)
    80007904:	00013903          	ld	s2,0(sp)
    80007908:	02010113          	addi	sp,sp,32
    8000790c:	00008067          	ret
    80007910:	00001517          	auipc	a0,0x1
    80007914:	d8050513          	addi	a0,a0,-640 # 80008690 <digits+0x48>
    80007918:	fffff097          	auipc	ra,0xfffff
    8000791c:	154080e7          	jalr	340(ra) # 80006a6c <panic>
    80007920:	00001517          	auipc	a0,0x1
    80007924:	d5850513          	addi	a0,a0,-680 # 80008678 <digits+0x30>
    80007928:	fffff097          	auipc	ra,0xfffff
    8000792c:	144080e7          	jalr	324(ra) # 80006a6c <panic>

0000000080007930 <holding>:
    80007930:	00052783          	lw	a5,0(a0)
    80007934:	00079663          	bnez	a5,80007940 <holding+0x10>
    80007938:	00000513          	li	a0,0
    8000793c:	00008067          	ret
    80007940:	fe010113          	addi	sp,sp,-32
    80007944:	00813823          	sd	s0,16(sp)
    80007948:	00913423          	sd	s1,8(sp)
    8000794c:	00113c23          	sd	ra,24(sp)
    80007950:	02010413          	addi	s0,sp,32
    80007954:	01053483          	ld	s1,16(a0)
    80007958:	ffffe097          	auipc	ra,0xffffe
    8000795c:	758080e7          	jalr	1880(ra) # 800060b0 <mycpu>
    80007960:	01813083          	ld	ra,24(sp)
    80007964:	01013403          	ld	s0,16(sp)
    80007968:	40a48533          	sub	a0,s1,a0
    8000796c:	00153513          	seqz	a0,a0
    80007970:	00813483          	ld	s1,8(sp)
    80007974:	02010113          	addi	sp,sp,32
    80007978:	00008067          	ret

000000008000797c <push_off>:
    8000797c:	fe010113          	addi	sp,sp,-32
    80007980:	00813823          	sd	s0,16(sp)
    80007984:	00113c23          	sd	ra,24(sp)
    80007988:	00913423          	sd	s1,8(sp)
    8000798c:	02010413          	addi	s0,sp,32
    80007990:	100024f3          	csrr	s1,sstatus
    80007994:	100027f3          	csrr	a5,sstatus
    80007998:	ffd7f793          	andi	a5,a5,-3
    8000799c:	10079073          	csrw	sstatus,a5
    800079a0:	ffffe097          	auipc	ra,0xffffe
    800079a4:	710080e7          	jalr	1808(ra) # 800060b0 <mycpu>
    800079a8:	07852783          	lw	a5,120(a0)
    800079ac:	02078663          	beqz	a5,800079d8 <push_off+0x5c>
    800079b0:	ffffe097          	auipc	ra,0xffffe
    800079b4:	700080e7          	jalr	1792(ra) # 800060b0 <mycpu>
    800079b8:	07852783          	lw	a5,120(a0)
    800079bc:	01813083          	ld	ra,24(sp)
    800079c0:	01013403          	ld	s0,16(sp)
    800079c4:	0017879b          	addiw	a5,a5,1
    800079c8:	06f52c23          	sw	a5,120(a0)
    800079cc:	00813483          	ld	s1,8(sp)
    800079d0:	02010113          	addi	sp,sp,32
    800079d4:	00008067          	ret
    800079d8:	0014d493          	srli	s1,s1,0x1
    800079dc:	ffffe097          	auipc	ra,0xffffe
    800079e0:	6d4080e7          	jalr	1748(ra) # 800060b0 <mycpu>
    800079e4:	0014f493          	andi	s1,s1,1
    800079e8:	06952e23          	sw	s1,124(a0)
    800079ec:	fc5ff06f          	j	800079b0 <push_off+0x34>

00000000800079f0 <pop_off>:
    800079f0:	ff010113          	addi	sp,sp,-16
    800079f4:	00813023          	sd	s0,0(sp)
    800079f8:	00113423          	sd	ra,8(sp)
    800079fc:	01010413          	addi	s0,sp,16
    80007a00:	ffffe097          	auipc	ra,0xffffe
    80007a04:	6b0080e7          	jalr	1712(ra) # 800060b0 <mycpu>
    80007a08:	100027f3          	csrr	a5,sstatus
    80007a0c:	0027f793          	andi	a5,a5,2
    80007a10:	04079663          	bnez	a5,80007a5c <pop_off+0x6c>
    80007a14:	07852783          	lw	a5,120(a0)
    80007a18:	02f05a63          	blez	a5,80007a4c <pop_off+0x5c>
    80007a1c:	fff7871b          	addiw	a4,a5,-1
    80007a20:	06e52c23          	sw	a4,120(a0)
    80007a24:	00071c63          	bnez	a4,80007a3c <pop_off+0x4c>
    80007a28:	07c52783          	lw	a5,124(a0)
    80007a2c:	00078863          	beqz	a5,80007a3c <pop_off+0x4c>
    80007a30:	100027f3          	csrr	a5,sstatus
    80007a34:	0027e793          	ori	a5,a5,2
    80007a38:	10079073          	csrw	sstatus,a5
    80007a3c:	00813083          	ld	ra,8(sp)
    80007a40:	00013403          	ld	s0,0(sp)
    80007a44:	01010113          	addi	sp,sp,16
    80007a48:	00008067          	ret
    80007a4c:	00001517          	auipc	a0,0x1
    80007a50:	c4450513          	addi	a0,a0,-956 # 80008690 <digits+0x48>
    80007a54:	fffff097          	auipc	ra,0xfffff
    80007a58:	018080e7          	jalr	24(ra) # 80006a6c <panic>
    80007a5c:	00001517          	auipc	a0,0x1
    80007a60:	c1c50513          	addi	a0,a0,-996 # 80008678 <digits+0x30>
    80007a64:	fffff097          	auipc	ra,0xfffff
    80007a68:	008080e7          	jalr	8(ra) # 80006a6c <panic>

0000000080007a6c <push_on>:
    80007a6c:	fe010113          	addi	sp,sp,-32
    80007a70:	00813823          	sd	s0,16(sp)
    80007a74:	00113c23          	sd	ra,24(sp)
    80007a78:	00913423          	sd	s1,8(sp)
    80007a7c:	02010413          	addi	s0,sp,32
    80007a80:	100024f3          	csrr	s1,sstatus
    80007a84:	100027f3          	csrr	a5,sstatus
    80007a88:	0027e793          	ori	a5,a5,2
    80007a8c:	10079073          	csrw	sstatus,a5
    80007a90:	ffffe097          	auipc	ra,0xffffe
    80007a94:	620080e7          	jalr	1568(ra) # 800060b0 <mycpu>
    80007a98:	07852783          	lw	a5,120(a0)
    80007a9c:	02078663          	beqz	a5,80007ac8 <push_on+0x5c>
    80007aa0:	ffffe097          	auipc	ra,0xffffe
    80007aa4:	610080e7          	jalr	1552(ra) # 800060b0 <mycpu>
    80007aa8:	07852783          	lw	a5,120(a0)
    80007aac:	01813083          	ld	ra,24(sp)
    80007ab0:	01013403          	ld	s0,16(sp)
    80007ab4:	0017879b          	addiw	a5,a5,1
    80007ab8:	06f52c23          	sw	a5,120(a0)
    80007abc:	00813483          	ld	s1,8(sp)
    80007ac0:	02010113          	addi	sp,sp,32
    80007ac4:	00008067          	ret
    80007ac8:	0014d493          	srli	s1,s1,0x1
    80007acc:	ffffe097          	auipc	ra,0xffffe
    80007ad0:	5e4080e7          	jalr	1508(ra) # 800060b0 <mycpu>
    80007ad4:	0014f493          	andi	s1,s1,1
    80007ad8:	06952e23          	sw	s1,124(a0)
    80007adc:	fc5ff06f          	j	80007aa0 <push_on+0x34>

0000000080007ae0 <pop_on>:
    80007ae0:	ff010113          	addi	sp,sp,-16
    80007ae4:	00813023          	sd	s0,0(sp)
    80007ae8:	00113423          	sd	ra,8(sp)
    80007aec:	01010413          	addi	s0,sp,16
    80007af0:	ffffe097          	auipc	ra,0xffffe
    80007af4:	5c0080e7          	jalr	1472(ra) # 800060b0 <mycpu>
    80007af8:	100027f3          	csrr	a5,sstatus
    80007afc:	0027f793          	andi	a5,a5,2
    80007b00:	04078463          	beqz	a5,80007b48 <pop_on+0x68>
    80007b04:	07852783          	lw	a5,120(a0)
    80007b08:	02f05863          	blez	a5,80007b38 <pop_on+0x58>
    80007b0c:	fff7879b          	addiw	a5,a5,-1
    80007b10:	06f52c23          	sw	a5,120(a0)
    80007b14:	07853783          	ld	a5,120(a0)
    80007b18:	00079863          	bnez	a5,80007b28 <pop_on+0x48>
    80007b1c:	100027f3          	csrr	a5,sstatus
    80007b20:	ffd7f793          	andi	a5,a5,-3
    80007b24:	10079073          	csrw	sstatus,a5
    80007b28:	00813083          	ld	ra,8(sp)
    80007b2c:	00013403          	ld	s0,0(sp)
    80007b30:	01010113          	addi	sp,sp,16
    80007b34:	00008067          	ret
    80007b38:	00001517          	auipc	a0,0x1
    80007b3c:	b8050513          	addi	a0,a0,-1152 # 800086b8 <digits+0x70>
    80007b40:	fffff097          	auipc	ra,0xfffff
    80007b44:	f2c080e7          	jalr	-212(ra) # 80006a6c <panic>
    80007b48:	00001517          	auipc	a0,0x1
    80007b4c:	b5050513          	addi	a0,a0,-1200 # 80008698 <digits+0x50>
    80007b50:	fffff097          	auipc	ra,0xfffff
    80007b54:	f1c080e7          	jalr	-228(ra) # 80006a6c <panic>

0000000080007b58 <__memset>:
    80007b58:	ff010113          	addi	sp,sp,-16
    80007b5c:	00813423          	sd	s0,8(sp)
    80007b60:	01010413          	addi	s0,sp,16
    80007b64:	1a060e63          	beqz	a2,80007d20 <__memset+0x1c8>
    80007b68:	40a007b3          	neg	a5,a0
    80007b6c:	0077f793          	andi	a5,a5,7
    80007b70:	00778693          	addi	a3,a5,7
    80007b74:	00b00813          	li	a6,11
    80007b78:	0ff5f593          	andi	a1,a1,255
    80007b7c:	fff6071b          	addiw	a4,a2,-1
    80007b80:	1b06e663          	bltu	a3,a6,80007d2c <__memset+0x1d4>
    80007b84:	1cd76463          	bltu	a4,a3,80007d4c <__memset+0x1f4>
    80007b88:	1a078e63          	beqz	a5,80007d44 <__memset+0x1ec>
    80007b8c:	00b50023          	sb	a1,0(a0)
    80007b90:	00100713          	li	a4,1
    80007b94:	1ae78463          	beq	a5,a4,80007d3c <__memset+0x1e4>
    80007b98:	00b500a3          	sb	a1,1(a0)
    80007b9c:	00200713          	li	a4,2
    80007ba0:	1ae78a63          	beq	a5,a4,80007d54 <__memset+0x1fc>
    80007ba4:	00b50123          	sb	a1,2(a0)
    80007ba8:	00300713          	li	a4,3
    80007bac:	18e78463          	beq	a5,a4,80007d34 <__memset+0x1dc>
    80007bb0:	00b501a3          	sb	a1,3(a0)
    80007bb4:	00400713          	li	a4,4
    80007bb8:	1ae78263          	beq	a5,a4,80007d5c <__memset+0x204>
    80007bbc:	00b50223          	sb	a1,4(a0)
    80007bc0:	00500713          	li	a4,5
    80007bc4:	1ae78063          	beq	a5,a4,80007d64 <__memset+0x20c>
    80007bc8:	00b502a3          	sb	a1,5(a0)
    80007bcc:	00700713          	li	a4,7
    80007bd0:	18e79e63          	bne	a5,a4,80007d6c <__memset+0x214>
    80007bd4:	00b50323          	sb	a1,6(a0)
    80007bd8:	00700e93          	li	t4,7
    80007bdc:	00859713          	slli	a4,a1,0x8
    80007be0:	00e5e733          	or	a4,a1,a4
    80007be4:	01059e13          	slli	t3,a1,0x10
    80007be8:	01c76e33          	or	t3,a4,t3
    80007bec:	01859313          	slli	t1,a1,0x18
    80007bf0:	006e6333          	or	t1,t3,t1
    80007bf4:	02059893          	slli	a7,a1,0x20
    80007bf8:	40f60e3b          	subw	t3,a2,a5
    80007bfc:	011368b3          	or	a7,t1,a7
    80007c00:	02859813          	slli	a6,a1,0x28
    80007c04:	0108e833          	or	a6,a7,a6
    80007c08:	03059693          	slli	a3,a1,0x30
    80007c0c:	003e589b          	srliw	a7,t3,0x3
    80007c10:	00d866b3          	or	a3,a6,a3
    80007c14:	03859713          	slli	a4,a1,0x38
    80007c18:	00389813          	slli	a6,a7,0x3
    80007c1c:	00f507b3          	add	a5,a0,a5
    80007c20:	00e6e733          	or	a4,a3,a4
    80007c24:	000e089b          	sext.w	a7,t3
    80007c28:	00f806b3          	add	a3,a6,a5
    80007c2c:	00e7b023          	sd	a4,0(a5)
    80007c30:	00878793          	addi	a5,a5,8
    80007c34:	fed79ce3          	bne	a5,a3,80007c2c <__memset+0xd4>
    80007c38:	ff8e7793          	andi	a5,t3,-8
    80007c3c:	0007871b          	sext.w	a4,a5
    80007c40:	01d787bb          	addw	a5,a5,t4
    80007c44:	0ce88e63          	beq	a7,a4,80007d20 <__memset+0x1c8>
    80007c48:	00f50733          	add	a4,a0,a5
    80007c4c:	00b70023          	sb	a1,0(a4)
    80007c50:	0017871b          	addiw	a4,a5,1
    80007c54:	0cc77663          	bgeu	a4,a2,80007d20 <__memset+0x1c8>
    80007c58:	00e50733          	add	a4,a0,a4
    80007c5c:	00b70023          	sb	a1,0(a4)
    80007c60:	0027871b          	addiw	a4,a5,2
    80007c64:	0ac77e63          	bgeu	a4,a2,80007d20 <__memset+0x1c8>
    80007c68:	00e50733          	add	a4,a0,a4
    80007c6c:	00b70023          	sb	a1,0(a4)
    80007c70:	0037871b          	addiw	a4,a5,3
    80007c74:	0ac77663          	bgeu	a4,a2,80007d20 <__memset+0x1c8>
    80007c78:	00e50733          	add	a4,a0,a4
    80007c7c:	00b70023          	sb	a1,0(a4)
    80007c80:	0047871b          	addiw	a4,a5,4
    80007c84:	08c77e63          	bgeu	a4,a2,80007d20 <__memset+0x1c8>
    80007c88:	00e50733          	add	a4,a0,a4
    80007c8c:	00b70023          	sb	a1,0(a4)
    80007c90:	0057871b          	addiw	a4,a5,5
    80007c94:	08c77663          	bgeu	a4,a2,80007d20 <__memset+0x1c8>
    80007c98:	00e50733          	add	a4,a0,a4
    80007c9c:	00b70023          	sb	a1,0(a4)
    80007ca0:	0067871b          	addiw	a4,a5,6
    80007ca4:	06c77e63          	bgeu	a4,a2,80007d20 <__memset+0x1c8>
    80007ca8:	00e50733          	add	a4,a0,a4
    80007cac:	00b70023          	sb	a1,0(a4)
    80007cb0:	0077871b          	addiw	a4,a5,7
    80007cb4:	06c77663          	bgeu	a4,a2,80007d20 <__memset+0x1c8>
    80007cb8:	00e50733          	add	a4,a0,a4
    80007cbc:	00b70023          	sb	a1,0(a4)
    80007cc0:	0087871b          	addiw	a4,a5,8
    80007cc4:	04c77e63          	bgeu	a4,a2,80007d20 <__memset+0x1c8>
    80007cc8:	00e50733          	add	a4,a0,a4
    80007ccc:	00b70023          	sb	a1,0(a4)
    80007cd0:	0097871b          	addiw	a4,a5,9
    80007cd4:	04c77663          	bgeu	a4,a2,80007d20 <__memset+0x1c8>
    80007cd8:	00e50733          	add	a4,a0,a4
    80007cdc:	00b70023          	sb	a1,0(a4)
    80007ce0:	00a7871b          	addiw	a4,a5,10
    80007ce4:	02c77e63          	bgeu	a4,a2,80007d20 <__memset+0x1c8>
    80007ce8:	00e50733          	add	a4,a0,a4
    80007cec:	00b70023          	sb	a1,0(a4)
    80007cf0:	00b7871b          	addiw	a4,a5,11
    80007cf4:	02c77663          	bgeu	a4,a2,80007d20 <__memset+0x1c8>
    80007cf8:	00e50733          	add	a4,a0,a4
    80007cfc:	00b70023          	sb	a1,0(a4)
    80007d00:	00c7871b          	addiw	a4,a5,12
    80007d04:	00c77e63          	bgeu	a4,a2,80007d20 <__memset+0x1c8>
    80007d08:	00e50733          	add	a4,a0,a4
    80007d0c:	00b70023          	sb	a1,0(a4)
    80007d10:	00d7879b          	addiw	a5,a5,13
    80007d14:	00c7f663          	bgeu	a5,a2,80007d20 <__memset+0x1c8>
    80007d18:	00f507b3          	add	a5,a0,a5
    80007d1c:	00b78023          	sb	a1,0(a5)
    80007d20:	00813403          	ld	s0,8(sp)
    80007d24:	01010113          	addi	sp,sp,16
    80007d28:	00008067          	ret
    80007d2c:	00b00693          	li	a3,11
    80007d30:	e55ff06f          	j	80007b84 <__memset+0x2c>
    80007d34:	00300e93          	li	t4,3
    80007d38:	ea5ff06f          	j	80007bdc <__memset+0x84>
    80007d3c:	00100e93          	li	t4,1
    80007d40:	e9dff06f          	j	80007bdc <__memset+0x84>
    80007d44:	00000e93          	li	t4,0
    80007d48:	e95ff06f          	j	80007bdc <__memset+0x84>
    80007d4c:	00000793          	li	a5,0
    80007d50:	ef9ff06f          	j	80007c48 <__memset+0xf0>
    80007d54:	00200e93          	li	t4,2
    80007d58:	e85ff06f          	j	80007bdc <__memset+0x84>
    80007d5c:	00400e93          	li	t4,4
    80007d60:	e7dff06f          	j	80007bdc <__memset+0x84>
    80007d64:	00500e93          	li	t4,5
    80007d68:	e75ff06f          	j	80007bdc <__memset+0x84>
    80007d6c:	00600e93          	li	t4,6
    80007d70:	e6dff06f          	j	80007bdc <__memset+0x84>

0000000080007d74 <__memmove>:
    80007d74:	ff010113          	addi	sp,sp,-16
    80007d78:	00813423          	sd	s0,8(sp)
    80007d7c:	01010413          	addi	s0,sp,16
    80007d80:	0e060863          	beqz	a2,80007e70 <__memmove+0xfc>
    80007d84:	fff6069b          	addiw	a3,a2,-1
    80007d88:	0006881b          	sext.w	a6,a3
    80007d8c:	0ea5e863          	bltu	a1,a0,80007e7c <__memmove+0x108>
    80007d90:	00758713          	addi	a4,a1,7
    80007d94:	00a5e7b3          	or	a5,a1,a0
    80007d98:	40a70733          	sub	a4,a4,a0
    80007d9c:	0077f793          	andi	a5,a5,7
    80007da0:	00f73713          	sltiu	a4,a4,15
    80007da4:	00174713          	xori	a4,a4,1
    80007da8:	0017b793          	seqz	a5,a5
    80007dac:	00e7f7b3          	and	a5,a5,a4
    80007db0:	10078863          	beqz	a5,80007ec0 <__memmove+0x14c>
    80007db4:	00900793          	li	a5,9
    80007db8:	1107f463          	bgeu	a5,a6,80007ec0 <__memmove+0x14c>
    80007dbc:	0036581b          	srliw	a6,a2,0x3
    80007dc0:	fff8081b          	addiw	a6,a6,-1
    80007dc4:	02081813          	slli	a6,a6,0x20
    80007dc8:	01d85893          	srli	a7,a6,0x1d
    80007dcc:	00858813          	addi	a6,a1,8
    80007dd0:	00058793          	mv	a5,a1
    80007dd4:	00050713          	mv	a4,a0
    80007dd8:	01088833          	add	a6,a7,a6
    80007ddc:	0007b883          	ld	a7,0(a5)
    80007de0:	00878793          	addi	a5,a5,8
    80007de4:	00870713          	addi	a4,a4,8
    80007de8:	ff173c23          	sd	a7,-8(a4)
    80007dec:	ff0798e3          	bne	a5,a6,80007ddc <__memmove+0x68>
    80007df0:	ff867713          	andi	a4,a2,-8
    80007df4:	02071793          	slli	a5,a4,0x20
    80007df8:	0207d793          	srli	a5,a5,0x20
    80007dfc:	00f585b3          	add	a1,a1,a5
    80007e00:	40e686bb          	subw	a3,a3,a4
    80007e04:	00f507b3          	add	a5,a0,a5
    80007e08:	06e60463          	beq	a2,a4,80007e70 <__memmove+0xfc>
    80007e0c:	0005c703          	lbu	a4,0(a1)
    80007e10:	00e78023          	sb	a4,0(a5)
    80007e14:	04068e63          	beqz	a3,80007e70 <__memmove+0xfc>
    80007e18:	0015c603          	lbu	a2,1(a1)
    80007e1c:	00100713          	li	a4,1
    80007e20:	00c780a3          	sb	a2,1(a5)
    80007e24:	04e68663          	beq	a3,a4,80007e70 <__memmove+0xfc>
    80007e28:	0025c603          	lbu	a2,2(a1)
    80007e2c:	00200713          	li	a4,2
    80007e30:	00c78123          	sb	a2,2(a5)
    80007e34:	02e68e63          	beq	a3,a4,80007e70 <__memmove+0xfc>
    80007e38:	0035c603          	lbu	a2,3(a1)
    80007e3c:	00300713          	li	a4,3
    80007e40:	00c781a3          	sb	a2,3(a5)
    80007e44:	02e68663          	beq	a3,a4,80007e70 <__memmove+0xfc>
    80007e48:	0045c603          	lbu	a2,4(a1)
    80007e4c:	00400713          	li	a4,4
    80007e50:	00c78223          	sb	a2,4(a5)
    80007e54:	00e68e63          	beq	a3,a4,80007e70 <__memmove+0xfc>
    80007e58:	0055c603          	lbu	a2,5(a1)
    80007e5c:	00500713          	li	a4,5
    80007e60:	00c782a3          	sb	a2,5(a5)
    80007e64:	00e68663          	beq	a3,a4,80007e70 <__memmove+0xfc>
    80007e68:	0065c703          	lbu	a4,6(a1)
    80007e6c:	00e78323          	sb	a4,6(a5)
    80007e70:	00813403          	ld	s0,8(sp)
    80007e74:	01010113          	addi	sp,sp,16
    80007e78:	00008067          	ret
    80007e7c:	02061713          	slli	a4,a2,0x20
    80007e80:	02075713          	srli	a4,a4,0x20
    80007e84:	00e587b3          	add	a5,a1,a4
    80007e88:	f0f574e3          	bgeu	a0,a5,80007d90 <__memmove+0x1c>
    80007e8c:	02069613          	slli	a2,a3,0x20
    80007e90:	02065613          	srli	a2,a2,0x20
    80007e94:	fff64613          	not	a2,a2
    80007e98:	00e50733          	add	a4,a0,a4
    80007e9c:	00c78633          	add	a2,a5,a2
    80007ea0:	fff7c683          	lbu	a3,-1(a5)
    80007ea4:	fff78793          	addi	a5,a5,-1
    80007ea8:	fff70713          	addi	a4,a4,-1
    80007eac:	00d70023          	sb	a3,0(a4)
    80007eb0:	fec798e3          	bne	a5,a2,80007ea0 <__memmove+0x12c>
    80007eb4:	00813403          	ld	s0,8(sp)
    80007eb8:	01010113          	addi	sp,sp,16
    80007ebc:	00008067          	ret
    80007ec0:	02069713          	slli	a4,a3,0x20
    80007ec4:	02075713          	srli	a4,a4,0x20
    80007ec8:	00170713          	addi	a4,a4,1
    80007ecc:	00e50733          	add	a4,a0,a4
    80007ed0:	00050793          	mv	a5,a0
    80007ed4:	0005c683          	lbu	a3,0(a1)
    80007ed8:	00178793          	addi	a5,a5,1
    80007edc:	00158593          	addi	a1,a1,1
    80007ee0:	fed78fa3          	sb	a3,-1(a5)
    80007ee4:	fee798e3          	bne	a5,a4,80007ed4 <__memmove+0x160>
    80007ee8:	f89ff06f          	j	80007e70 <__memmove+0xfc>
	...
